#library(testthat)
#library(stdDev)

context("spread calculations")

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

# standarderror
test_that("standard_deviation() returns the standard deviation of the input vector x", {
  # expected outputs:
  expect_equal(round(standarderror(c(1,2,3)),5), 0.4714)
  expect_equal(round(standarderror(c(-1,-2,-3)),5), 0.4714)
  expect_equal(round(standarderror(c(-1,2,-3)),5), 1.18634)
  expect_equal(round(standarderror(c(c(1,2), c(3,4))), 5), 0.55902)
  expect_equal(round(standarderror(c(c(1,2,3), c(4))), 5), 0.55902)
  expect_equal(standarderror(c(1)), 0)
  expect_equal(standarderror(1), 0)

  # expected errors:
  expect_error(standarderror(c()), "Zero")
  expect_error(standarderror(c("a", "b", "c")), "type")
  expect_error(standarderror("a"), "type")
})
