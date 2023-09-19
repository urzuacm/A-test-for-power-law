install.packages("readxl")

pwlaw = function(x, mu) {
  n <- length(x)
  t <- x / mu
  u <- log(t - 1)
  alpha <- 1 / mean(log(t))
  d1 <- n * alpha / mu - (alpha + 1) * sum(1 / x)
  d2 <- -n + alpha * sum(u) - (alpha + 1) * sum(u / t)
  d <- c(d1, d2, 0)
  p <- digamma(alpha) - digamma(1) - 1
  q <- trigamma(alpha) + trigamma(1)
  i1 <- alpha / (mu^2 * (alpha + 2))
  i2 <- -(alpha * p + 1) / (mu * (alpha + 2))
  i3 <- -1 / (mu * (alpha + 1))
  j2 <- (alpha * (p^2 + q) + 2 * (p + 1)) / (alpha + 2)
  j3 <- p / (alpha + 1)
  k3 <- 1 / alpha^2
  h <- matrix(c(i1, i2, i3, i2, j2, j3, i3, j3, k3), nrow = 3)
  t(d) %*% solve(h, d) / n
}

library(readxl)
x <- as.matrix(read_excel("1M.xlsx", col_names = FALSE))
mu <- 6
pwlaw(x, mu)
pchisq(pwlaw(x,mu), df=2, lower.tail=FALSE)

