library(paco)
context("Axis order")

test_that("Order by type is ordered by type", {
  expect_equal(axis.order(iris, by = "type"), c("Species", "Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"))
})
