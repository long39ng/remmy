withr::local_options(
  list(lemmy_instance = "https://enterprise.lemmy.ml"),
  .local_envir = teardown_env()
)
