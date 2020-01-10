context("test-shiny-app-function")

library(shinytest)

test_that("Shiny app works", {
  skip_on_cran()

  syn <- attempt_instantiate()
  attempt_login(syn = syn)

  expect_pass(testApp("apps/shinytestexample/", compareImages = FALSE))
})