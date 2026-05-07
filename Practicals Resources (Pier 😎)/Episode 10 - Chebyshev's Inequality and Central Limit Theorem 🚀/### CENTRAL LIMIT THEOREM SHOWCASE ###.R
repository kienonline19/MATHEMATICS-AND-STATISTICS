### CENTRAL LIMIT THEOREM SHOWCASE ###

# Consider X~Unif(0,1)
runif(1) # simulate from Unif(0,1)
runif(10) # simulate from 10 Unif(0,1)
N = 10000
hist(runif(N),main = paste("Sample from X~Unif(0,1)"),
     prob = TRUE, xlab = "")
mean(runif(N)) # note that E[X] = 1/2
var(runif(N)) # note that Var(X) = 1/12

# Consider the r.v. X_1,X_2,...,X_n i.i.d.
# and with X_i ~ Unif(0,1). Then:
# 1] E[SUM] = n*mu = n*(1/2)
#    and E[X̄] = mu = 1/2
# 2] Var(SUM) = n*sigma2 = n*(1/12)
#    and Var(X̄) =sigma^2/n = (1/12)/n
# 3] (CLT) if n>30 then both SUM and X̄ are normally distributed


install.packages("latex2exp")
library(latex2exp)

N = 10000
for (n in 2:100)
{
  Sys.sleep(1/sqrt(n)+1/4)
  hist(rowSums(matrix(runif(n*N),N,n)),
       main = paste("Sample from sum of ",n," Unif(0,1)"),
       prob = TRUE, xlab = "",breaks = 100)
}

N = 10000
for (n in 2:50)
{
  Sys.sleep(1/sqrt(n)+1/4)
  hist(rowMeans(matrix(runif(n*N),N,n)),
       main = paste("Sample from mean of ",n," Unif(0,1)"),
       prob = TRUE, xlab = "",xlim = c(0,1), breaks = seq(0,1,1/100))
}
