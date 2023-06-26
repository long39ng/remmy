import { writeFileSync } from "fs";
import { MethodDeclaration, Project, Symbol, SyntaxKind } from "ts-morph";

type ParsedMethod = [
  string,
  ParsedMethodBody & {
    params: ParsedProperty;
    doc: string[];
  }
];

type ParsedMethodBody = {
  req_type: string;
  endpoint: string;
  resp: ParsedProperty;
};

type ParsedProperty = {
  [k: string]: {
    type: string | string[] | ParsedProperty;
    is_optional: boolean;
    is_array: boolean;
    is_interface: boolean;
    is_literal_union: boolean;
  };
};

function parseMethod(method: MethodDeclaration): ParsedMethod {
  return [
    method.getName(),
    {
      ...parseMethodBody(method),
      params: Object.assign(
        {},
        ...method
          .getParameter("form")!
          .getType()
          .getProperties()
          .map(parseProperty)
      ),
      doc: method.getJsDocs()[0].getInnerText().split("\n"),
    },
  ];
}

function parseMethodBody(method: MethodDeclaration): ParsedMethodBody {
  const callExpr = method
    .getBody()!
    .getFirstDescendantByKind(SyntaxKind.ReturnStatement)!
    .getFirstChildByKind(SyntaxKind.CallExpression)!;

  const [req_type, endpoint, _] = callExpr
    .getArguments()
    .map(x => x.getType().getLiteralValue() as string);

  const resp = Object.assign(
    {},
    ...callExpr
      .getReturnType()
      .getTypeArguments()[0]
      .getProperties()
      .map(parseProperty)
  );

  return { req_type, endpoint, resp };
}

function parseProperty(prop: Symbol): ParsedProperty {
  const propType = prop.getValueDeclaration()!.getType().getNonNullableType();

  const isArray = propType.isArray();

  const propElementType = isArray
    ? propType.getArrayElementTypeOrThrow()
    : propType;

  const isInterface = propElementType.isInterface();

  const isLiteralUnion =
    propElementType.isUnion() && !propElementType.isBoolean();

  return {
    [prop.getName()]: {
      type: isInterface
        ? Object.assign(
            {},
            ...propElementType.getProperties().map(parseProperty)
          )
        : isLiteralUnion
        ? propElementType.getUnionTypes().map(type => type.getText())
        : propElementType.getText(),
      is_optional: prop.isOptional(),
      is_array: isArray,
      is_interface: isInterface,
      is_literal_union: isLiteralUnion,
    },
  };
}

const project = new Project({ tsConfigFilePath: "./tsconfig.json" });

const sourceFile = project.getSourceFile("./src/http.ts")!;

const httpMethods = sourceFile
  .getClass("LemmyHttp")!
  .getChildrenOfKind(SyntaxKind.MethodDeclaration)
  .filter(method => method.getParameters()[0].getName() === "form");

writeFileSync(
  "http-methods.json",
  JSON.stringify(Object.fromEntries(httpMethods.map(parseMethod)), null, 2)
);
