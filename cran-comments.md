## Resubmission

> Please always write package names, software names and API (application programming interface) names in single quotes in title and description. e.g: --> 'Lemmy', 'JavaScript'

My reason for not putting these names in quotation marks is as follows:

- Lemmy: While it is the [software name](https://en.wikipedia.org/wiki/Lemmy_(software)), "Lemmy" is also used to refer to the [social platform](https://join-lemmy.org/) -- similar to Reddit, for which Lemmy can be considered an alternative. Since social platform names like [Reddit](https://cran.r-project.org/package=RedditExtractoR) and [Twitter](https://cran.r-project.org/package=rtweet) are not quoted in in the title and description of their respective API packages on CRAN, I decided not to put "Lemmy" in quotes.

- JavaScript: I've seen programming language names such as R, [JavaScript](https://cran.r-project.org/package=V8), [Rust](https://cran.r-project.org/package=rextendr) and [C++](https://cran.r-project.org/package=Rcpp) written without quotes in CRAN package titles and descriptions.

However, if it's required to put these names in quotation marks, I'd be happy to do so.

> Please add small executable examples in your Rd-files to illustrate the use of the exported function but also enable automatic testing.

Examples have been added to the documentation for all functions that do not require authentication.

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.
