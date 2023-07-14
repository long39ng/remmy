test_that("wrapper works", {
  skip_if_offline("lemmy.world")

  expect_type(wrapper(endpoint = "site"), "list")
})
