# First Partial Mock II Solution Script
#
# Exercise 1
# a)
tab = table(Campaign$Location); tab
# b)
prop.table(tab)
# c)
tab = table(Campaign$Location,Campaign$Loyalty); tab
prop.table(tab,1)
# d)
mean(Campaign$Revenues)
# e)
b = boxplot(Campaign$Revenues)
Q = quantile(Campaign$Revenues,c(0.25,0.5,0.75)); Q
LL = Q[1]-1.5*(Q[3]-Q[1]); LL
UL = Q[3]+1.5*(Q[3]-Q[1]); UL
min(Campaign$Revenues[Campaign$Revenues>LL])
max(Campaign$Revenues[Campaign$Revenues<UL])
# note that the quantities above are more easily extracted with:
b$stats
# f)
boxplot(Campaign$Revenues~Campaign$Location)
# g)
tapply(Campaign$Revenues,Campaign$Location,mean)
tapply(Campaign$Revenues,Campaign$Location,sd)
# h)
plot(Campaign$Sales,Campaign$Revenues) #i)
cor(Campaign$Sales,Campaign$Revenues) #ii)
limit = 300
l = Campaign$Sales<limit #iii)
mean(l)
plot(Campaign$Sales[l],Campaign$Revenues[l]) #iv)
cor(Campaign$Sales[l],Campaign$Revenues[l])

# Exercise 2
f = table(Campaign$Loyalty); f
p = f/sum(f); p
breaks = c(10,20,40,50,70,80,100)
mids = (breaks[-1]+breaks[-7])/2
fdata = rep(mids,f)
h = hist(fdata,breaks)
# a)
d = h$density; d
# b)
p[6]+p[5]/2 # Estimate of rel. freq. above 75
1-(p[6]+p[5]/2) # Estimate of rel.freq. below 75
70-0.05/d[4]
# c)
mean = sum(mids*f)/sum(f); mean
var = sum((mids-mean)^2*p); var
sd = sqrt(var); sd

# Exercise 4 
# a)
mu = 120
qpois(0.10,mu)
# b)
p = 1-ppois(150,mu); p
# c)
n = 350
p*n # expected
1-ppois(2,p*350)
# d)
mean = 80;
N = 1000000
arriving = rpois(N,mu) # simulate customers showing up for N days
entering = pmin(arriving,150) # the store has a 150 customer capacity!
totalspent = rpois(N,mean*entering) # total spent by
# the customers in each of the N simulated days
mean(totalspent) # estimated average amount spent
mean(totalspent>12000) # estimated probability for the total to exceed 12000