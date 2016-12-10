# standarderror

context("Testing standarderror")

test_that("standarderror() returns the standard error of the input vector x", {
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
