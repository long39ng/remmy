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
    doc_function(method, name),
    fun_definition(method, name),
    sep = "\n",
    file = "../R/http-methods.R",
    append = TRUE
  )
})

styler::style_file("../R/http-methods.R")

devtools::document(roclets = c("rd", "collate", "namespace"))

pkgdown_reference <- http_methods |>
  names() |>
  fun_name() |>
  set_names() |>
  map(\(x) paste("  -", x)) |>
  modify_at(1, \(x) c("- title: Site", "  contents:", x)) |>
  modify_at("lemmy_create_community", \(x) c("- title: Communities", "  contents:", x)) |>
  modify_at("lemmy_create_post", \(x) c("- title: Posts", "  contents:", x)) |>
  modify_at("lemmy_create_comment", \(x) c("- title: Comments", "  contents:", x)) |>
  modify_at("lemmy_get_private_messages", \(x) c("- title: Private messages", "  contents:", x)) |>
  modify_at("lemmy_register", \(x) c("- title: Account & Users", "  contents:", x)) |>
  modify_at("lemmy_add_admin", \(x) c("- title: Admin", "  contents:", x)) |>
  list_c()

cat(
  "url: https://long39ng.github.io/remmy/",
  "template:",
  "  bootstrap: 5",
  "reference:",
  pkgdown_reference,
  sep = "\n",
  file = "../_pkgdown.yml"
)
