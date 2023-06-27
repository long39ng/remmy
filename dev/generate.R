library(glue)
library(purrr)
library(rlang)

source("generate-doc.R")
source("generate-function.R")

as_r_type <- function(js_type) {
  switch(js_type,
    boolean = "logical",
    number = "numeric",
    string = "character",
    stop("Unknown type.")
  )
}

http_methods <- jsonlite::fromJSON("lemmy-js-client/http-methods.json") |>
  modify_depth(1, \(method) modify_at(method, "endpoint", \(x) sub("^/", "", x)))

iwalk(http_methods, \(method, name) {
  cat(
    doc_function(method),
    fun_definition(method, name),
    sep = "\n",
    file = "../R/http-methods.R",
    append = TRUE
  )
})

styler::style_file("../R/http-methods.R")
