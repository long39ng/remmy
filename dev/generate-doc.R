doc_function <- function(method, name) {
  paste0(
    doc_desc(method),
    doc_params(method),
    doc_returns(method),
    doc_examples(name),
    "#' @export"
  )
}

doc_desc <- function(method) {
  method$doc |>
    map_chr(\(line) paste("#'", line)) |>
    paste0(collapse = "\n") |>
    paste0("\n#'\n")
}

doc_params <- function(method) {
  method$params |>
    imap_chr(\(param, name) glue::glue("#' @param {name} {doc_property(param)}.")) |>
    c("#' @param .lemmy_instance Default: \"https://lemmy.world\". Change the default instance by setting the `lemmy_instance` [options()].") |>
    paste0(collapse = "\n") |>
    paste0("\n#'\n")
}

doc_returns <- function(method) {
  props_doc <- method$resp |>
    map(doc_property, recursive = TRUE) |>
    lobstr::tree(
      val_printer = \(x) gsub("^\"|\"$", "", x, perl = TRUE),
      tree_chars = list(h = "-", hd = "-", v = "|", vd = "|", l = "`", j = "|", n = "o")
    ) |>
    capture.output() |>
    tail(-1) |>
    map_chr(\(line) paste("#'", line)) |>
    paste0(collapse = "\n")

  paste(
    glue::glue("#' @returns A `list` of length {length(method$resp)}:"),
    "#' \\preformatted{<list>",
    props_doc,
    "#' }",
    "#'\n",
    sep = "\n"
  )
}

doc_property <- function(prop, recursive = FALSE) {
  if (!recursive) stopifnot(!prop$is_interface)

  if (prop$is_interface) {
    prop_docs <- map(prop$type, doc_property, recursive = TRUE)
    if (prop$is_array) prop_docs <- list(`[Each element]` = prop_docs)
    return(prop_docs)
  }
  if (prop$is_literal_union) {
    desc <- paste("One of", knitr::combine_words(prop$type, and = " or "))
  } else {
    desc <- paste("A", as_r_type(prop$type))
  }
  if (prop$is_optional) {
    desc <- paste("(Optional)", desc)
  }
  if (prop$is_array) {
    desc <- paste(desc, "vector")
  } else if (!prop$is_literal_union) {
    desc <- paste(desc, "value")
  }
  desc
}

doc_examples <- function(name) {
  examples_file <- file.path("generate-function-examples", paste0(name, ".R"))

  if (file.exists(examples_file)) {
    paste("#'", c("@examplesIf remmy:::is_lemmy_world()", readLines(examples_file))) |>
      paste0(collapse = "\n") |>
      paste0("\n#'\n")
  }
}
