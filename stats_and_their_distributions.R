#example 1
hist(textbooks$ucla_new)
mean(textbooks$ucla_new)
sd(textbooks$ucla_new)

average_price <- 0
for(i in 1:5000)
{
  sample_prices <- sample(textbooks$ucla_new, 40, replace = TRUE)
  average_price[i] <- mean(sample_prices)
}

hist(average_price)

print(average_price)
sd(average_price)


#example 2

p_hats <- 0
possible_entries <- c("support", "not")

for(i in 1:10000){
  sampled_entries <- sample(possible_entries, 500, replace = TRUE, prob=c(.88, .12))
  p_hats[i] <- sum(sampled_entries == "support")/500
}

hist(p_hats)
sd(p_hats)

#2
#a
pnorm(75,70,1.58, lower.tail = FALSE) #10/sqrt(40)
#b
1 - pnorm(75,70, 10/sqrt(20))

#example 3
mean_x <- mean(textbooks$ucla_new)
sd_x <- sd(textbooks$ucla_new)/sqrt(40)

x <- rnorm(100, mean_x, sd_x)
x <- sort(x)
y <- dnorm(x, mean_x, sd_x)
hist(average_price, pr=T)
lines(y ~ x)

#3
pnorm(1.3,1,.1925) - pnorm(.8,1,.1925)
