SPW(x, mu)
library(readxl)
x <- as.matrix(read_excel("1M.xlsx", col_names = FALSE, n_max = 200))
mu <- 1
SPW(x, mu)
pchisq(SPW(x,mu), df=2, lower.tail=FALSE)