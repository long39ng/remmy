% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/http-methods.R
\name{lemmy_get_site_metadata}
\alias{lemmy_get_site_metadata}
\title{Fetch metadata for any given site.}
\usage{
lemmy_get_site_metadata(
  url,
  .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")
)
}
\arguments{
\item{url}{A character value.}

\item{.lemmy_instance}{Default: "https://lemmy.world". Change the default instance by setting the \code{lemmy_instance} \code{\link[=options]{options()}}.}
}
\value{
A \code{list} of length 1:
\preformatted{<list>
`-metadata: <list>
  |-title: (Optional) A character value
  |-description: (Optional) A character value
  |-image: (Optional) A character value
  `-embed_video_url: (Optional) A character value
}
}
\description{
\code{HTTP.GET /post/site_metadata}
}
\examples{
\dontshow{if (remmy:::is_lemmy_world()) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
site_metadata <- lemmy_get_site_metadata("https://feddit.de")

site_metadata$metadata$title
\dontshow{\}) # examplesIf}
}
