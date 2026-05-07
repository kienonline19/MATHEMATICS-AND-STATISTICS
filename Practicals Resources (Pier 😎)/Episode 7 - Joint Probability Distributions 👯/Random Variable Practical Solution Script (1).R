# Random Variable Pretty Little Practical Solution Script
#Exercise 1
#a)
pnorm(2,1,2)-pnorm(-2,1,2)
#b)
pnorm(-sqrt(10),3,sqrt(0.4))+
  1-pnorm(sqrt(10),3,sqrt(0.4))
#c)
qnorm(0.9,1,sqrt(3))-1
#d)
(qnorm(0.75,-2,3)+2)^2
#e)
qnorm(0.8,20,sqrt(2))
#Exercise 2
#a)
pexp(3,1)
#b)
pexp(sqrt(3),0.5)-pexp(1,0.5)
#c)
1-pexp(4,0.2)
#d)
qexp(0.95,0.2)
#e)
qexp(0.85,2)
exp(qexp(0.85,2)+1)
#Exercise 3
#a)
punif(3,1,4)
#b)
punif(sqrt(3),-2,6)-punif(1,-2,6)+
  punif(-1,-2,6)-punif(-sqrt(3),-2,6)
2*(sqrt(3)-1)/8
#c)
punif(-2,-4,6)+1-punif(2,-4,6)
#Exercise 4
#a)
pgamma(0.85,1,2)
#b)
1-pgamma(4,5,1)
#c)
qgamma(0.95,5,1)
#d)
qgamma(0.15,2,3)
sqrt(qgamma(0.15,2,3)+1)
#e)
sim=rgamma(10000,1,3)
mean(sim)