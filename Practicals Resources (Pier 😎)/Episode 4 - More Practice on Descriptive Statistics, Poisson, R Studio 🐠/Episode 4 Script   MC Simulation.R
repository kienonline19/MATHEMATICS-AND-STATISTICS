# EPISODE 4 EXERCISE SHEET
# Exercise 4
# a)
GDP=UNData$GDP
GDP
h=hist(GDP,breaks=c(0,2000,10000,20000,150000))
h$density
#density of a class =  (relative freq of class) / (width of class)

# b)
h$counts
h=hist(GDP,breaks=c(0,2000,10000,20000,150000),freq=TRUE)
#same histogram with absolute freq on the y-axis
#R reports an error:
#this histogram is MISLEADING as it seems that most countries
#are in the class [20000,150000] (bar with largest area)
#Instead, when frequency density is used we have that:
#total area of the histogram = 1
#the area of a bar = relative frequency of the corresponding class
#also:
h=hist(GDP,breaks=c(0,2000,10000,20000,150000),freq=TRUE)
h=hist(GDP,breaks=c(0,2000,5000,7000,10000,20000,150000),freq=TRUE)
#MISLEADING! Shapes of the hist changes depending on chosen classes
h=hist(GDP,breaks=c(0,2000,5000,7000,10000,20000,150000))
#using freq density the shape of the hist is ROBUST
#with respect to the class choice

# c)
Region=UNData$Region
Region
table(Region)

# d)
Urban=UNData$Urban
tab=table(Urban)
prop.table(tab)

# e)
tab=table(Urban,Region)
tab
round(prop.table(tab),4)*100 #not compulsory but useful

# f)
#by hand 
38/52
tab
prop.table(tab,2) #divide each entry by the its COLUMN SUM
#relative freq of countries with LOW URBAN POP. conditioned on AFRICAN COUNTRIES

# g)
tab
prop.table(tab,1) #divide each entry by its ROW SUM

# h)
LifeExp=UNData$LifeExp
LifeExp<50 #logical vector: vector of TRUEs and FALSEs
UNData[LifeExp<50,]
#UNData[LifeExp<50,c(1,5,8)] #this exctracts column 1, 5 and 8

# i)
Group=UNData$Group
Group=="other" #logical vector
UNData[Group=="other",] #"==" returns TRUE if the equality holds, FALSE otherwise
UNData[(Group=="other")&(Region=="Europe")&((GDP>25000)|(Urban=="High")),]
# &: both conditions are met
# |: either of the conditions is met
Country=UNData$Country
UNData[(Country=="Spain"),2]="oecd"

# j)
Fertility=UNData$Fertility
boxplot(Fertility) #there seems to be 1 upper outlier
summary(Fertility)
Q1=quantile(Fertility,0.25)
Q3=quantile(Fertility,0.75)
IQR=Q3-Q1
#alternatively you can directly use:
#IQR=IQR(Fertility)
UL=Q3+1.5*IQR #Upper limit 
UNData[Fertility>UL,] #the only upper outlier is Niger

# k) #SUBGROUPS
boxplot(Fertility~Region) #boxplots of Fertility
#for subgroups defined by Region

# l)
tapply(GDP,Region,median) #calculates median of GDP
#for subgroups defined by Region

# Exercise 5
# a)
# as each item is faulty with prob 0.001
p = 0.001
# out of
n = 800 
# we expect
mu = n*p; mu
# 0.8 faulty chips
#b) We use the poisson model for the number of faulty chips in a lot of 800
# X: number of faulty chips
# X ~ Poisson(mu = 0.8)
# P(X=0) = p(0) = exp(-mu)*mu^0/0!
exp(-mu)
dpois(0,mu) # pmf of poisson(mu) evaluated at 0
#c)
(1-p)^800 #all chips should be non faulty
#d)
dpois(4,mu) # P(X=4)
#e)
ppois(3,mu) # cdf of poisson P(X<=3)
1-ppois(3,mu) # P(X>=4)
#f)
1-ppois(2,mu)
#g)
s = 0:7 #we want to evaluate the pmf at these points: 0,1,...,7
# as then the pmf becomes basically zero
pmf = dpois(s,mu) # pmf of the poisson at 0,1,...,7
plot(s,pmf,type="h",lwd=3) #type="h" plots vertical lines
#lwd=3 makes the lines wider (it stands for Line WiDths)

#h)
N = 10000
A = matrix(rbinom(800*N,1,0.001),800,N)
tab=table(colSums(A))
barplot(prop.table(tab))
dpois(0:7,lambda=0.8)

#i)
# Estimating a probability through stochastic simulation (Monte Carlo)

# It can be useful to simulate many lots in order to estimate probabilities
# or expected values via Monte Carlo.

# Suppose the number of faulty chips in a lot follows a Poisson distribution
# with mean mu = n * p

N = 1000000
p = 0.001
n = 800
mu = n * p

# Simulate the number of faulty chips in each of N lots
sim = rpois(N, mu)

# The proportion of lots with more than 3 faulty chips
# approximates P(X > 3)

sum(sim > 3) / N

# This probability could be computed analytically using ppois.
# However, simulation becomes especially useful when expectations
# involve more complex cost structures.

# Suppose inspection costs are defined as follows:
# - If 3 or fewer chips are faulty: 100 euros per faulty chip
# - If 4 or 5 chips are faulty: 150 euros per faulty chip
# - If more than 5 chips are faulty: flat cost of 2000 euros

# Define the cost for each simulated lot

cost = (sim <= 3) * (sim * 100) +
  (sim > 3 & sim <= 5) * (sim * 150) +
  (sim > 5) * 2000

# The average inspection cost per lot is estimated by

mean(cost)