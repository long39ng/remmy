
<!-- README.md is generated from README.Rmd. Please edit that file -->

# remmy

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/remmy)](https://CRAN.R-project.org/package=remmy)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/long39ng/remmy/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/long39ng/remmy/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/long39ng/remmy/branch/main/graph/badge.svg)](https://app.codecov.io/gh/long39ng/remmy?branch=main)
<!-- badges: end -->

An HTTP API client for [Lemmy](https://github.com/LemmyNet/lemmy) in R.

Code and
[documentation](https://long39ng.github.io/remmy/reference/index.html)
are [generated](https://github.com/long39ng/remmy/tree/main/dev) from
the [official JavaScript
client](https://github.com/LemmyNet/lemmy-js-client) source.

Lemmy version:
[0.18.1](https://github.com/LemmyNet/lemmy/releases/tag/0.18.1)

## Installation

<!-- You can install the released version of remmy from CRAN: -->
<!-- ``` r -->
<!-- install.packages("remmy") -->
<!-- ``` -->
<!-- Or install the development version of remmy from GitHub with: -->

You can install the development version of remmy from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("long39ng/remmy")
```

## Example

``` r
library(remmy)

example_comment <- lemmy_get_comment(546564)

example_comment$comment_view$comment$content
#> [1] "I am not by nature a sentimental person regarding software but I will truly miss RiF."
```

## Acknowledgements

[Source code
generation](https://github.com/long39ng/remmy/tree/main/dev) was made
possible by:

- [ts-morph](https://github.com/dsherret/ts-morph) for navigating the
  TypeScript AST of the [official JavaScript
  client](https://github.com/LemmyNet/lemmy-js-client) source and
  extracting the HTTP request methods into JSON.
- [jsonlite](https://github.com/jeroen/jsonlite) for parsing objects
  from JSON to R.
- [rlang](https://github.com/r-lib/rlang) (and the [metaprogramming
  capabilities of R](https://adv-r.hadley.nz/expressions.html)) for
  programmatically generating function definitions and parameter and
  return type documentation.
