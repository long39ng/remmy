## Resubmission #2

### Comment #1

> We would highly appreciate if you could put at least 'JavaScript' into quotation marks, please.

I have put both 'JavaScript' and 'Lemmy' into quotes for consistency.

### Comment #2

> "Using foo:::f instead of foo::f allows access to unexported objects. This is generally not recommended, as the semantics of unexported objects may be changed by the package author in routine maintenance."
> Please omit one colon.
> Used ::: in documentation:
>      man/lemmy_get_comment.Rd:
>         if (remmy:::is_lemmy_world()) (if (getRversion() >= "3.4") withAutoprint else force)({
> })

The `is_lemmy_world()` function (implemented id "R/test-helpers.R") is a helper to determine whether the Lemmy server is reachable and thus whether the examples should be run as part of `R CMD check`.

`is_lemmy_world()` is not exported, as it is not intended to be used by users, and the `:::` is therefore necessary. However, users would not be able to see it in the documentation anyway, as the condition in `@examplesIf` is placed inside a [`\dontshow{}` block in the rendered .Rd files](https://roxygen2.r-lib.org/articles/rd.html#cb3), so I do not think it is a problem.

The same approach of using internal helper functions for conditional execution of examples is used by several CRAN packages such as [dm](https://github.com/cynkra/dm/blob/main/R/dm_get_con.R#L18), [tune](https://github.com/tidymodels/tune/blob/main/R/plots.R#L57), and [stacks](https://github.com/tidymodels/stacks/blob/main/R/predict.R#L18).

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.
