is_lemmy_world <- function() {
  !is_on_cran() && !is.null(curl::nslookup("lemmy.world", error = FALSE))
}

is_on_cran <- function() {
  !interactive() && !isTRUE(as.logical(Sys.getenv("NOT_CRAN", "false")))
}
