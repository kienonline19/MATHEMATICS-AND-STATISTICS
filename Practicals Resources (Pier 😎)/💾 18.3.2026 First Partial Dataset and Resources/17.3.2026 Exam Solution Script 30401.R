# Exercise 1
# a)
summary(Bidding$Bid)
# b)
# p = c(0.15,0.30,0.20,0.20,0.15);
p = c(0.20,0.30,0.20,0.15,0.15); p # Version B
F = cumsum(p); F
breaks = c(0,20,50,60,70,100); breaks
w = diff(breaks); w
d = p/w; d
# c)
Q1 = 20+(0.25-F[1])/d[2]; Q1
Q2 = 50+(0.5-F[2])/d[3]; Q2
Q3 = 60+(0.75-F[3])/d[4]; Q3
# d)
mean(Bidding$Bid); median(Bidding$Bid)
boxplot(Bidding$Bid)
mids = (breaks[-6]+breaks[-1])/2; mids
sum(mids*p);
# optionally check histogram
dat = rep(mids,p*1000)
hist(dat,breaks)
# e)
hist(Bidding$Bid)

# Exercise 2
# a)
boxplot(Bidding$Bid~Bidding$Channel)
# b)
tapply(Bidding$Bid,Bidding$Channel,mean)
tapply(Bidding$Bid,Bidding$Channel,median)
# c)
x = Bidding$Bid[Bidding$Channel=="Aggregator"]
fivenum = summary(x)
quantile(x,c(0.1,0.05))
# d)
Q1 = fivenum[2]
Q3 = fivenum[5]
IQR = Q3-Q1
Q1-1.5*IQR
# e)
plot(Bidding$Bid,Bidding$PaidFare)


# Exercise 3
#a)
prop.table(table(Bidding$LeadTime))
#b)
tab = table(Bidding$Channel,Bidding$LeadTime)
prop.table(tab,2)
#c)
prop.table(tab,1)

# Version B
#a)
prop.table(table(Bidding$LeadTime))
tab = table(Bidding$Channel,Bidding$LeadTime)
#b)
prop.table(tab,1)
#c)
prop.table(tab,2)

# Exercise 4
mu = 10; # mu=11 for Version B
# a)
p = ppois(4,mu); p
1-ppois(6,mu)
qpois(0.95,mu)
# 
n = 200
p*n
ppois(1,p*n) # ppois(0,p*n) in Version B

m = 9
sum(dpois(0:(m-1),mu)*1000*(m:1)); m*50
# alternatively via simulation (easier?)
N = 1000000
not_showing = rpois(N,mu)
compensation = pmax(0,5-not_showing)*1000
mean(compensation)