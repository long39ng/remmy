% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/http-methods.R
\name{lemmy_password_change_after_reset}
\alias{lemmy_password_change_after_reset}
\title{Change your password from an email / token based reset.}
\usage{
lemmy_password_change_after_reset(
  token,
  password,
  password_verify,
  .lemmy_instance = getOption("lemmy_instance", "https://lemmy.world")
)
}
\arguments{
\item{token}{A character value.}

\item{password}{A character value.}

\item{password_verify}{A character value.}

\item{.lemmy_instance}{Default: "https://lemmy.world". Change the default instance by setting the \code{lemmy_instance} \code{\link[=options]{options()}}.}
}
\value{
A \code{list} of length 3:
\preformatted{<list>
|-jwt: (Optional) A character value
|-registration_created: A logical value
`-verify_email_sent: A logical value
}
}
\description{
\code{HTTP.POST /user/password_change}
}
