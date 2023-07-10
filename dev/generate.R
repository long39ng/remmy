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
  modify(\(method) modify_at(method, "endpoint", \(x) sub("^/", "", x)))

cat(
  "# Functions generated from ../dev/generate.R\n\n",
  file = "../R/http-methods.R"
)

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

devtools::document(roclets = c("rd", "collate", "namespace"))
