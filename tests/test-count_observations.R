test_that("count_observations works with normal numeric vectors", {
  expect_equal(count_observations(c(1, 2, 3, 4)), 4)
  expect_equal(count_observations(c(1, NA, 3, 4, NA)), 3)
  expect_equal(count_observations(as.numeric(c(NA, NA, NA))), 0)
  expect_equal(count_observations(numeric(0)), 0)
})

test_that("count_observations handles non-numeric inputs", {
  expect_error(count_observations("hello"), "Input must be a numeric vector.")
  expect_error(count_observations(list(1, 2, 3)), "Input must be a numeric vector.")
  expect_error(count_observations(TRUE), "Input must be a numeric vector.")
})

test_that("count_observations handles edge cases", {
  expect_equal(count_observations(c(Inf, -Inf, NaN, 1)), 3) # NaN should be counted as NA
  expect_equal(count_observations(c(1.5, 2.5, NA, 3.5)), 3)
})


