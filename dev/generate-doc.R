doc_function <- function(method) {
  paste(
    doc_desc(method),
    doc_params(method),
    doc_returns(method),
    sep = "\n#'\n"
  )
}

doc_desc <- function(method) {
  method$doc |>
    map_chr(\(line) paste("#'", line)) |>
    paste(collapse = "\n")
}

doc_params <- function(method) {
  method$params |>
    imap_chr(\(param, name) glue::glue("#' @param {name} {doc_property(param)}.")) |>
    c("#' @param .lemmy_instance Default: \"https://lemmy.world\". Change the default instance by setting the `lemmy_instance` [options()].") |>
    paste(collapse = "\n")
}

doc_returns <- function(method) {
  props_doc <- method$resp |>
    map(doc_property, recursive = TRUE) |>
    lobstr::tree(val_printer = \(x) gsub("^\"|\"$", "", x, perl = TRUE)) |>
    capture.output() |>
    map_chr(\(line) paste("#'", line)) |>
    paste(collapse = "\n")

  glue::glue(
    "#' @returns A `list` of length {length(method$resp)}:\n#'\n#' ```",
    props_doc,
    "#' ```\n#'\n#' @export",
    .sep = "\n"
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
