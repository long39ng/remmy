#' @importFrom httr2 `%>%`
#'
#' @noRd
#'
#' @examples
#' wrapper(endpoint = "comment", id = 546564)
wrapper <- function(base_url = getOption("lemmy_instance", "https://lemmy.world"),
                    req_type = c("GET", "POST", "PUT"),
                    endpoint,
                    ...) {
  req_type <- match.arg(req_type)

  url <- build_full_url(base_url, endpoint)

  if (req_type == "GET") {
    req <- httr2::req_url_query(url, ...)
  } else {
    req <- url %>%
      httr2::req_method(req_type) %>%
      httr2::req_body_form(...)
  }

  req %>%
    httr2::req_retry(max_tries = 3) %>%
    httr2::req_perform() %>%
    httr2::resp_body_json()
}

build_full_url <- function(base_url, endpoint) {
  httr2::request(base_url) %>%
    httr2::req_user_agent("https://github.com/long39ng/remmy") %>%
    httr2::req_url_path_append("api", api_version, endpoint)
}

# https://github.com/LemmyNet/lemmy-js-client/blob/main/src/types/others.ts#L1
api_version <- "v3"
