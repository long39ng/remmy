
<!-- README.md is generated from README.Rmd. Please edit that file -->

# remmy

<!-- badges: start -->
<!-- badges: end -->

An HTTP API client for [Lemmy](https://github.com/LemmyNet/lemmy) in R.

Code and
[documentation](https://long39ng.github.io/remmy/reference/index.html)
are
[generated](https://github.com/long39ng/remmy/blob/main/dev/build.sh)
from the [official JavaScript
client](https://github.com/LemmyNet/lemmy-js-client) source.

Lemmy version:
[0.18.0](https://github.com/LemmyNet/lemmy/releases/tag/0.18.0)

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

lemmy_get_comment(546564)$comment_view$comment$content
#> [1] "I am not by nature a sentimental person regarding software but I will truly miss RiF."
```
