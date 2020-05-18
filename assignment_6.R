#1 
#Use R to generate 5000 random samples of sizen= 252 of city mileage from cars withmanualtransmissionsonly, 
#and compute the statistic ̄Xfrom each sample, the average city mileage of cars with manual transmis-sions. 
#Then create a histogram of those 5000 statistics.  Include a description of the shape, the center, andthe spread of the distribution.
avg_mpg <- 0
manual<-epa2012$city_mpg[epa2012$transmission_desc == 'Manual']
manual
for(i in 1:5000){
  sample<-sample(manual, 252, replace = TRUE)
  avg_mpg[i]<-mean(sample)
}

hist(avg_mpg)
summary(avg_mpg)

#2
#What is the standard error of the sampling distribution in #1?
std_err <- sd(avg_mpg)/sqrt(5000)
std_err

#3
#Use the Central Limit Theorem to approximate the probability that the average city mileage in a sample of252 cars with manual transmissions is greater than 21 MPG.
pnorm(21, mean(avg_mpg), std_err, lower.tail = FALSE)

#4
#Let ̄X be the mean of a random sample of size 37 from a distribution with pdf f(x) = (x+ 2)/18,−2< x <4,zero elsewhere.  ApproximateP(1.9< ̄X <2.2)
ex <- 2 #integral X*((X+2)/18)
ex_sqr <- 6
vx <- ex_sqr - ex**2
sigma <- sqrt(vx)
sig_x <- sigma/sqrt(37)
pnorm(2.2,ex,sig_x) - pnorm(1.9,ex,sig_x) 


#5
#The following random sample shows the nicotine contents, measured in milligrams, of 12 cigarettes of a partic-ular brand.  
#Assume that nicotine contents of all cigarettes of this particular brand are normally distributed.
#Construct a 99% confidence interval for the mean nicotine content of this brand of cigarette.

nic <- c(16, 21, 15, 18, 22, 17, 18, 18, 20, 18, 22, 17)
n <- 12
deg_free <- n - 1
x_bar <- mean(nic)
sigma <- sd(nic)

answer1 <- x_bar + abs(qt(.005, deg_free)) * sigma/sqrt(12)
answer2 <- x_bar - abs(qt(.005, deg_free)) * sigma/sqrt(12)

answer1
answer2


#6
#In a large factory, the manager is interested in estimating the average time needed to perform a manufacturingn process.  
#She measured the time of 40 workers performing the manufacturing process and found an averagetime  of  35  minutes  and  with  a  standard  deviation  of  5  minutes.   
#Construct  a  95%  confidence  interval  theaverage time needed to perform the manufacturing process for all workers in the factory.

n <- 40
deg_free <- n - 1
x_bar <- 35
sigma <- 5

answer1 <- x_bar + abs(qt(.025, deg_free)) * sigma/sqrt(n)
answer2 <- x_bar - abs(qt(.025, deg_free)) * sigma/sqrt(n)

answer1
answer2


#7
#In a recent survey of 400 Bend residents, 80 said they have at least one kayak at home.  
#Give a 90% confidenceinterval for the proportion of Bend residents who have at least one kayak at home
p_hat <- 80/400
sig2 <- .05
crit <- 1.645
ans1 <- p_hat + crit*sqrt((p_hat*(1-p_hat)/400))
ans2 <- p_hat - crit*sqrt((p_hat*(1-p_hat)/400))
ans1
ans2

#8
#A manufacturing company produces water filters for home refrigerators.  The process has typically producedsome defective filters.  
#A random sample of 300 filters yielded 12 defects.  Construct a 90% confidence intervalfor the true proportion of defective water filters.
p_hat <- 12/300
sig2 <- .05
crit <- 1.645
ans1 <- p_hat + crit*sqrt((p_hat*(1-p_hat)/300))
ans2 <- p_hat - crit*sqrt((p_hat*(1-p_hat)/300))
ans1
ans2


#===================================================
#The following random sample of heights (in inches) of a particular variety of tomato plants was obtained.
#Assume that the population of heights of this particular variety are normally distributed:41,50,35,44,45,42,43,47,41,39,45,45,39,40,45
tom <- c(41,50,35,44,45,42,43,47,41,39,45,45,39,40,45)

#9
#Compute  the  sample  mean  and  sample  standard  deviation  of  these  values,  respectively  and  rounded  to  3 decimal places.
round(mean(tom),3)
round(sd(tom),3)

#10
#Find a 95% confidence interval for μ.
t.test(tom, conf.level = .95)


#11
#Let’s revisit the data set epa2012 from US Environmental Protection Agency (EPA). 
#Use this dataset toconstruct  a  95%  confidence  interval  for  the  true  mean  of  city  mileage  (MPG)  of  all  cars  with  a  manualtransmission.  
#Assume that MPG of cars with a manual transmission follow a normal distribution.
t.test(manual, conf.level = .95)

#12
# Give an interpretation in context of the 95% confidence interval found in #11.

#I am 95% confident that the mean city mpg of all cars with manual transmissions is between 20.13204 and 21.26479 mpg.


#13
#Using the information given in epa2012 from US Environmental Protection Agency (EPA). 
#Construct a 95% confidence  interval  for  the  true  mean  of  city  mileage  (MPG)  of  all  cars  with  an automatic transmission.
#Assume that MPG of cars with an automatic transmission follow a normal distribution.
auto<-epa2012$city_mpg[epa2012$transmission_desc == 'Automatic']
t.test(auto, conf.level = .95)

#14
#What is the margin of error in #13?
me <- (18.84966 - 17.08888)/2

me
