#library(testthat)
#library(stdDev)

context("Testing standard_deviation")

# standard_deviation
test_that("standard_deviation() returns the standard deviation of the input vector x", {
  # expected outputs:
  expect_equal(round(standard_deviation(c(1,2,3)),5), 0.8165)
  expect_equal(round(standard_deviation(c(-1,-2,-3)),5), 0.8165)
  expect_equal(round(standard_deviation(c(-1,2,-3)),5), 2.0548)
  expect_equal(round(standard_deviation(c(c(1,2), c(3,4))), 5), 1.11803)
  expect_equal(round(standard_deviation(c(c(1,2,3), c(4))), 5), 1.11803)
  expect_equal(standard_deviation(c(1)), 0)
  expect_equal(standard_deviation(1), 0)

  # expected errors:
  expect_error(standard_deviation(c()), "Zero")
  expect_error(standard_deviation(c("a", "b", "c")), "type")
  expect_error(standard_deviation("a"), "type")
})
