test_that("calculate_mean works correctly", {
  expect_equal(calculate_mean(c(1, 2, 3, 4, 5)), 3)
  expect_equal(calculate_mean(c(NA, 2, 4, NA, 6)), 4)
  expect_equal(calculate_mean(as.numeric(c(NA, NA, NA))), NaN)
  expect_equal(calculate_mean(numeric(0)), NaN)
})

test_that("calculate_mean handles non-numeric inputs", {
  expect_error(calculate_mean("hello"), "Input must be a numeric vector.")
  expect_error(calculate_mean(list(1, 2, 3)), "Input must be a numeric vector.")
  expect_error(calculate_mean(TRUE), "Input must be a numeric vector.")
})
