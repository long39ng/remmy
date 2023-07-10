test_that("wrapper works", {
  skip_if_offline("enterprise.lemmy.ml")

  expect_type(wrapper(endpoint = "site"), "list")
})
