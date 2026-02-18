#Exercise 1
#a) Numerical Count Data
#b)
NClaims=c(0,1,2,3,4,5,6)
NClaims=0:6 #equivalent to previous line
f=c(21,13,5,4,2,3,2) #absolute frequencies
n=sum(f)
p=f/n; p #relative frequencies
min=0
#order of the first quartile
(n+1)*0.25 #the first quartile is in position 12.75
#so roughly between observations 12th and 13th 
Q1=0
#order of the median
(n+1)*0.5
Median=1
#order of the third quartile
(n+1)*0.75
Q3=2
max=6
mean=sum(NClaims*f)/n
mean
#d)
var=sum((NClaims-mean)^2*f)/n
sd=sqrt(var)
#e)
Claims=rep(NClaims,f) #vector of our raw data
Claims
summary(Claims)
boxplot(Claims)
tab=table(Claims)
barplot(tab)