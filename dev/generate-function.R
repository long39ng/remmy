fun_definition <- function(method, method_name) {
  definition_text <- new_function(
    fun_args(method),
    fun_body(method)
  ) |>
    deparse() |>
    paste(collapse = "\n")

  paste(fun_name(method_name), "<-", definition_text)
}

fun_name <- function(method_name) {
  paste0("lemmy_", snakecase::to_snake_case(method_name))
}

fun_args <- function(method) {
  c(
    map(method$params, \(param) if (param$is_optional) NULL else expr()),
    exprs(.lemmy_instance = getOption("lemmy_instance", "https://lemmy.world"))
  )
}

fun_body <- function(method) {
  expr({
    !!!param_checks(method$params)

    wrapper(
      base_url = .lemmy_instance,
      req_type = !!method$req_type,
      endpoint = !!method$endpoint,
      !!!syms(set_names(names(method$params)))
    )
  })
}

param_checks <- function(params) {
  check_scalars <- params |>
    discard(\(param) param$is_array) |>
    imap(\(param, name) {
      if (param$is_optional) {
        expr(stopifnot(length(!!sym(name)) <= 1L))
      } else {
        expr(stopifnot(length(!!sym(name)) == 1L))
      }
    }) |>
    unname()

  check_types <- params |>
    discard(\(param) param$is_literal_union) |>
    imap(\(param, name) {
      .p <- sym(paste0("is.", as_r_type(param$type)))
      if (param$is_optional) {
        expr(stopifnot(is.null(!!sym(name)) || (!!.p)(!!sym(name))))
      } else {
        expr(stopifnot((!!.p)(!!sym(name))))
      }
    }) |>
    unname()

  check_literal_unions <- params |>
    keep(\(param) param$is_literal_union) |>
    imap(\(param, name) {
      if (param$is_optional) {
        expr(
          stopifnot(
            is.null(!!sym(name)) ||
              !!sym(name) %in% !!gsub("^\"|\"$", "", param$type, perl = TRUE)
          )
        )
      } else {
        expr(
          stopifnot(
            !!sym(name) %in% !!gsub("^\"|\"$", "", param$type, perl = TRUE)
          )
        )
      }
    }) |>
    unname()

  c(check_scalars, check_types, check_literal_unions)
}
