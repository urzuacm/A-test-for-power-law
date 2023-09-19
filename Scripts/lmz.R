# A R script to calculate the lmztest statistic.
install.packages("readxl")
lmztest = function(x) {
  xn <- tail(x, n = 1)
  n <- length (x)
  z1 <- 1 - mean(log(x / xn))
  z2 <- 0.5 - mean(xn / x)
  lmz <- 4 * n * (z1 ^ 2 + 6 * (z1 * z2) + 12 * (z2 ^ 2))
  p_value = 1 - pchisq(lmz, df = 2)
  return(c(lmz, p_value))
}


library(readxl)
x <- as.vector(as.matrix(read_excel("MET.xlsx", col_names = FALSE)))
result <- lmztest(x)
print(result)

