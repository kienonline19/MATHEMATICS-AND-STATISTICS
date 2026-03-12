# 30401 First Partial Exam Solution Script 12.3.2025
# Adjust for Versions A and B
# Exercise 1
# a)
boxplot(Employee$Salary~Employee$Department)
# b) and c)
tapply(Employee$Salary,Employee$Department,mean)
tapply(Employee$Salary,Employee$Department,median)
# d)
quantile(Employee$Salary[Employee$Department=="HR"],c(0.85,1))
quantile(Employee$Salary[Employee$Department=="IT"],c(0.85,1))
# e)
tab = table(Employee$Department,Employee$Role)
prop.table(tab,1)

# Exercise 2
# a)
b = boxplot(Employee$Salary)
b$stats
quantile(Employee$Salary,c(0.25,0.5,0.75))
# explore
breaks = c(1000,1500,2000,3000,5000,8000)
mids = (breaks[-1]+breaks[-6])/2
hist(Employee$Salary,breaks = c(1000,1500,2000,3000,5000,8000))
# b)
f = c(85,45,10,10,50)
fakedata = rep(mids,f)
h = hist(fakedata,breaks=breaks)
d = h$density; d
p = f/200; p
# c)
Q1 = 1000+0.25/d[1]; Q1
Median = 1500+((0.5-0.45))/d[2]; Median
Q3 = 5000
# d)
mean1 = mean(Employee$Salary); mean1
mean2 = sum(mids*f)/sum(f); mean2
sd1 = sd(Employee$Salary); sd1
sd2 = sqrt(sum((mids-mean1)^2*f)/sum(f)); sd2
# e)
UL = Q[3]+1.5*(Q[3]-Q[1]); UL
Employee$Salary[Employee$Salary>UL]
Employee$Role[Employee$Salary>UL]
# f)
(8000-UL)*d[5]
(8000-6500)*d[5]

# Exercise 4
# X~Poisson(20)
# a)
qpois(c(0.10,0.90),20)
# b)
p = 1-ppois(30,20); p
# c)
n = 200
n*p
ppois(10,n*p) # at most 10 days
# Indeed 20 work from home on avg
# However 
# rains: X1 ~ Poisson(30)
# sun: X2 ~ Poisson(mu_2)
# rains with prob 1/5
# 30*0.2+mu2*0.8 = 20
mu2 = (20-30*0.2)/0.8; mu2
# simulation
N = 1000000
rain = rbinom(N,1,0.2)
x1 = rpois(N,30)
x2 = rpois(N,mu2)
x = rain*x1+(1-rain)*x2
hist(x)
quantile(x,c(0.1,0.9))
phat = mean(x>=30); phat
ppois(10,200*phat)