# Exercise 3, Episode 2 Solution Script

# Transfer all the information in R Studio
breaks = c(0,10,20,35,50,100,200)
f = c(35,50,81,20,10,4); f
# Calculate all relevant frequencies
mids = (breaks[-7]+breaks[-1])/2; mids # mid points
w = diff(breaks); w # diff() calculates the vector of differences
n = sum(f); n # sample size
p = f/n; p # relative frequencies
F = cumsum(p); F # cumulative frequencies
d = p/w; d # frequency densities
# We don't need this necessarily, but we can visualize the
# frequency table with a histogram with the corresponding classes
hist(rep(mids,f),breaks = breaks)
# To calculate the quantiles, proceed accoring to geometry.
# E.g. for the first quartile, find the value such that the area of the
# histogram before that value is 0.25, and after it is 0.75.
# refer to the notes "Exercise 3, Episode 2 Notes" for the intuition
# we saw in class
Q1 = 10+(0.25-p[1])/d[2]; Q1
Median = 20+(0.5-p[1]-p[2])/d[3]; Median
Q3 = 20+(0.75-p[1]-p[2])/d[3]; Q3
# About the Min we can say that it is for sure 
# higher than 0 and lower than 10
# About the Max, we can say that it is for sure 
# lower than 200 and higher than 100

mean = sum(mids*p); mean # 26.7625
var = sum((mids-mean)^2*p); var # 562.5498
sd = sqrt(var); sd # 23.71813

# Note that all the statistics obtained (quartiles, mean, sd,...)
# are just approximations. They are calculated under the 
# assumption that THE OBSERVATIONS ARE UNIFORMELY DISTRIBUTED
# WITHIN EACH INTERVAL CLASS