#1 
#Use R to generate 5000 random samples of sizen= 252 of city mileage from cars withmanualtransmissionsonly, 
#and compute the statistic ̄Xfrom each sample, the average city mileage of cars with manual transmis-sions. 
#Then create a histogram of those 5000 statistics.  Include a description of the shape, the center, andthe spread of the distribution.
avg_mpg <- 0

for(i in 1:5000){
  sample<-sample(epa2012$transmission_desc == 'Manual', 252, replace = TRUE)
  avg_mpg[i]<-mean(sample)
}

hist(avg_mpg)
summary(avg_mpg)

#2
#What is the standard error of the sampling distribution in #1?
sd(avg_mpg)

#3
#Use the Central Limit Theorem to approximate the probability that the average city mileage in a sample of252 cars with manual transmissions is greater than 21 MPG.
pnorm(21, mean(avg_mpg), sd(avg_mpg)/sqrt(252))
