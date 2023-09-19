install.packages("readxl")
lmztest(x, mu)
library(readxl)
x <- as.matrix(read_excel("1M.xlsx", col_names = FALSE, n_max = 500)) 
mu <- 1
lmztest(x, mu)
