#1
1 - pnorm(2.15)

#2
pnorm(.22) -  pnorm(-1.46)

#3
qnorm(.3)

#4
qnorm(.05)
qnorm(.95)

#5
pnorm(30,25,3)

#6
pnorm(27,25,3) - pnorm(22,25,3)

#7
pnorm(160, 157, 7) - pnorm(150, 157, 7)

#8
qnorm(.8, 157, 7)

#9
scores <- c(118,127,112,121,78,112,131,133,98,133,113,119,107,103,94,106,121,98,114,144,109,128,112,123,138,86,127,100,105,116,124,110,129,104,112,129,103,102,77,92,110,128,75,102,128,94,94,120,116,90)
table(scores)

#10
boundaries <- seq(70, 150, by = 2)
scores.cut <- cut(scores, boundaries, right = FALSE) #interval closed on left
scores.freq <- table(scores.cut)
hist(scores, breaks = boundaries, right = FALSE)

#12
epa2012
boxplot(epa2012$city_mpg ~ epa2012$transmission)

#13
automatic = epa2012$city_mpg[epa2012$transmission_desc == 'Automatic']
manual = epa2012$city_mpg[epa2012$transmission_desc == 'Manual']
print('summary stats')
print('automatic')
summary(automatic)
mean(automatic)
sd(automatic)
length(automatic)

print('manual')
summary(manual)
mean(manual)
sd(manual)
length(manual)

#14
auto_bound <- seq(9, 128, 2)
man_bound <- seq(10, 35, 5)

hist(automatic, breaks = auto_bound, right = FALSE, xlab = "mpg")
hist(manual, breaks = man_bound, right = FALSE, xlab = "mpg")

