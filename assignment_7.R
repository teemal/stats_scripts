#1
#According to a report on sleep deprivation by the Centers for Disease Control and Prevention, 
#the proportionof California residents who reported insufficient rest or sleep during each of the preceding 30 days is 8.0%,
#while this proportion is 8.8% for Oregon residents.  These data are based on simple random samples of 11,545California and 4,691 Oregon residents.  
#Calculate a 95% confidence interval for the difference between theproportions of Californians and Oregonians 
#who are sleep deprived and interpret it in context of the data.
ca <- .08
or <- .088

ca_sample <- 11545
or_sample <- 4691

(or - ca) + 1.96 * sqrt( (or * (1 - or))/or_sample +  (ca * (1 - ca))/ca_sample )
(or - ca) - 1.96 * sqrt( (or * (1 - or))/or_sample +  (ca * (1 - ca))/ca_sample )


#Each year the US Environmental Protection Agency (EPA) releases fuel economy data on cars manufacturedin that year.  
#The dataset includes the drive system (drivesys) of each car and their city mileages per gallon(citympg) fuel efficiency.
#2.  
#A potential buyer is undecided whether buying a 2012 car with a front wheel drive (F) or with a rear wheeldrive (R). 
#Obtain the mean, standard deviation, and the number of observations included in the sample foreach type of these systems.
front <- epa2012$city_mpg[epa2012$drive_sys == 'F']
rear <- epa2012$city_mpg[epa2012$drive_sys == 'R']

mean(front)
sd(front)
length(front)

mean(rear)
sd(rear)
length(rear)



#3
#Use this dataset to construct a 95% confidence interval for the true difference in mean city mileage (MPG)
#between front wheel drive (F) and rear wheel drive (R) systems.  
#Assume that MPG of front wheel drive andrear wheel drive cars follow a normal distribution.
t.test(front, rear, conf.level = .95)


#4
#What is the margin of error in #3?
(6.917775 + 9.170744) / 2




# A delivery company claims that the mean time it takes to deliver frozen food between two particular cities is 4hours.  
# A consumer advocacy group wishes to show at 5% level that the mean time is greater than 4 hours.  
# A random sample of 50 deliveries yielded a sample mean of 4.2 hours with a standard deviation of 0.5 hours.

# 5  
# Setup the null and alternative hypotheses.
# H0 : U = 4
# HA : U > 4


#6
#Compute the test statistic.
t <- (4.2 - 4)/(.5/sqrt(50))
t


#7
#What is the p-value?
pt(t, 50 - 1, lower.tail = FALSE)



#8
# What is the conclusion of the test?  State your conclusion in context.

# We do reject the null hypothesis because there is significant eivdence to support that delivery of frozen food between two particular cities is greater than 4 hours



#Let’s revisit the US Environmental Protection Agency (EPA) data,epa2012.  
#The potential buyer found a study on city fuel efficiency of modern cars with front wheel drive systems.  
#The study claims that front wheel drive cars havea mean of 25 city MPG. Using epa2012 dataset, 
#the potential buyer would like to test at 5% level of significancethat front wheel drive cars 
#built in 2012 have lower fuel efficiency than recent built front wheel drive cars so he may reconsider whether buying a 2012 model or a 
#more modern car makes more sense in terms of fuel efficiency.

#9.  
#Setup the null and alternative hypotheses.
# H0 : U = 25
# HA : U < 25

#10
#Compute the test statistic.
t <- (mean(front) - 25)/(sd(front)/sqrt(length(front)))
t

#11
# What is the p-value?

pt(t, length(front))

#12
#What is the conclusion of the test?  State your conclusion in context.

# We do reject the null hypothesis because evidence suggests that mean city mpg is greater than 25 mpg


#A manufacturing company produces water filters for home refrigerators.  
#The process has typically producedabout 4% defective filters.  
#A new design experiment has led to change the seal to reduce defects.  
#With the processrunning using the new seal,  a random sample of 500 filters yielded 14 defects.  
#Conduct a hypothesis test using α= 0.05 significant level to see whether the new seal reduces the proportion of defects.

#13.  
#Setup the null and alternative hypotheses.
# H0 : P = .04
# HA : P < .04

#14
#Compute the test statistics.
bottom <- sqrt( (.04*(1-.04))/500)
z <- ((14/500) - .04)/(bottom)
z


#15
#Find the p-value
pnorm(z)


#16
#State your conclusion in context.
# We do not reject the null hypothesis because the evidence does not suggests that the new seal is better than the current one.