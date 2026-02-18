# 30401 Exam Solution Script

# Exercise 1
# a)
x = Sleep$SleepQuality
b = boxplot(x); hist(x);
mean(x); median(x);
sd(x)
summary(x)
hist(Sleep$SleepQuality)
# b)
quantile(Sleep$SleepQuality,0.95)
quantile(Sleep$SleepQuality,0.90)
# c)
Q = quantile(Sleep$SleepQuality,c(0.25,0.75))
threshold = Q[1]-1.5*(Q[2]-Q[1])
Sleep$SleepQuality[Sleep$SleepQuality<threshold]
# d)
plot(Sleep$Age,Sleep$SleepQuality)
cor(Sleep$Age,Sleep$SleepQuality)
# e)
table(Sleep$SleepDisorder,Sleep$BMI)
(9+7)/(200+9+7)
(64+65)/(64+65+19)

# Exercise 2
p = pnorm(0,250,100); p
qnorm(0.005,250,100)
qnorm(0.001,250,100)
1-pbinom(2,100,p)
1-ppois(2,100*p)
pnorm(0,250,10)

# Exercise 3
100/40^2
c = sqrt(100/0.01)+15; c
# Exercise 4
# a)
lambda = 8; k = 10
s = seq(0,15,0.01)
pdf = k/lambda*(s/lambda)^(k-1)*exp(-(s/lambda)^k)
plot(s,pdf,type="l")
# d)
for (k in c(8,8.5,9,9.5,10,10.5))
print(-sum(log(k/lambda)+(k-1)*log(x/lambda)-(x/lambda)^k))
# e)
k = seq(8,10,0.01)
L = 0*k
for (i in 1:length(L))
{
  L[i] = -sum(log(k[i]/lambda)+(k[i]-1)*log(x/lambda)-(x/lambda)^k[i])
}
plot(k,L,type="l")
k[which.min(L)]
# f)
x = Sleep$SleepDuration
xbar = mean(x); xbar
k = seq(7,11,0.01)
L = k*0; L
for (i in 1:length(L))
{
  lambda = mu/gamma(1+1/k[i])
  L[i] = -sum(log(k[i]/lambda)+(k[i]-1)*log(x/lambda)-(x/lambda)^k[i])
}
plot(k,L,type="l")
khat = k[which.min(L)]; khat
lambdahat = mu/gamma(1+1/khat); lambdahat

# Exercise 5
# a)
table(Sleep$SleepDisorder)
n = 374
phat = (78+77)/n; phat
1-pnorm(phat,0.35,sqrt(0.35*0.65/n))
1-pnorm(phat,0.40,sqrt(0.40*0.60/n))
# b)
x = Sleep$SleepDuration[Sleep$Occupation=="Doctor"]
y = Sleep$SleepDuration[Sleep$Occupation=="Nurse"]
xbar = mean(x); ybar = mean(y);
sx = sd(x); sy = sd(y);
dbar = xbar-ybar;dbar
nx = length(x); ny = length(y)
pnorm(dbar,0,sqrt(sx^2/nx+sy^2/ny))