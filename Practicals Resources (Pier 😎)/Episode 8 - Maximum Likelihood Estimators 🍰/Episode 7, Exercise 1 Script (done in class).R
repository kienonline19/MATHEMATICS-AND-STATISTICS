# Episode Script
# Exercise 1
theta = 4
x = seq(0,1,0.01); x
pdf = theta*x^(theta-1)
plot(x,pdf,type="l",lwd=3,col="red",
     main = paste("theta =",theta))

x1 = c(0.90,0.96,0.9,0.86,0.73,0.98)
n = length(x1)
MLE1 = -n/sum(log(x1)); MLE1
x2 = c(0.10,0.52,0.02,0.05,0.4)
n = length(x2)
MLE2 = -n/sum(log(x2)); MLE2
x3 = c(0.12,0.96,0.10,0.67,0.64,0.68,0.86,0.29,0.43,0.19)
n = length(x3)
MLE3 = -n/sum(log(x3)); MLE3