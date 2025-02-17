test_that("filter_high_values works correctly", {
  expect_equal(filter_high_values(c(1, 5, 10, 15), threshold = 9), c(10, 15)) # 过滤出 >9 的值
  expect_equal(filter_high_values(c(-5, 0, 3, 8, 10), threshold = 3), c(8, 10)) # 过滤出 >3 的值
  expect_equal(filter_high_values(c(1, 2, 3), threshold = 10), numeric(0)) # 没有满足条件的数，返回空向量
  expect_equal(filter_high_values(numeric(0), threshold = 5), numeric(0)) # 空向量输入
})

test_that("filter_high_values handles non-numeric inputs", {
  expect_error(filter_high_values("hello", 5), "Input data and threshold must be numeric.")
  expect_error(filter_high_values(c(1, 2, 3), "five"), "Input data and threshold must be numeric.")
  expect_error(filter_high_values(list(1, 2, 3), 5), "Input data and threshold must be numeric.")
})
