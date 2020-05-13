#1
avg_mpg <- 0

for(i in 1:5000){
  sample<-sample(epa2012$transmission_desc == 'Manual', 252, replace = TRUE)
  avg_mpg[i]<-mean(sample)
}

hist(avg_mpg)
summary(avg_mpg)