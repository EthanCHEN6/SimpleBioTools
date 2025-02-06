K <- 5
pi <- c(0.1, 0.2, 0.3, 0.2, 0.2)  # 每个组的概率

# 生成1000个组别标签
labels <- sample(1:K, size = 1000, replace = TRUE, prob = pi)

# 查看结果
table(labels)

#多元正态分布
# 定义参数
K <- 2
pi <- c(0.2, 0.8)
means <- list(c(0, 0), c(5, 5))
covariances <- list(matrix(c(1, 0, 0, 1), nrow = 2), matrix(c(1, 0.5, 0.5, 1), nrow = 2))
n <- 1000

# 生成组别标签
labels <- sample(1:K, size = n, replace = TRUE, prob = pi)

# 生成多元正态数据
data <- matrix(NA, nrow = n, ncol = 2)
for (i in 1:n) {
  k <- labels[i]
  data[i, ] <- MASS::mvrnorm(1, mu = means[[k]], Sigma = covariances[[k]])
}

# 查看结果
head(data)
table(labels)



library(MASS)
#二进制
n <- 1000  # 样本量
p <- 3     # 变量维度
mu <- c(0, 0, 0)  # 均值向量
Sigma <- matrix(c(1, 0.5, 0.2, 0.5, 1, 0.3, 0.2, 0.3, 1), nrow = p)  # 协方差矩阵
thresholds <- c(0, 0.5, -0.5)  # 每个变量的阈值

# 生成多元正态分布的潜变量
Z <- mvrnorm(n, mu = mu, Sigma = Sigma)

# 将潜变量转换为二进制数据
X <- matrix(NA, nrow = n, ncol = p)
for (j in 1:p) {
  X[, j] <- ifelse(Z[, j] > thresholds[j], 1, 0)
}

# 查看结果
head(Z)  # 潜变量
head(X)  # 二进制数据
