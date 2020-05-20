#1
#a
#h0: u = 26
#ha: u < 26
n <- 25

#b
t <- (25 - 26)/(3/sqrt(25))
t

#c
pt(t, n - 1)


#2
#a
#h0 : u = 6
#ha : U != 6
n <- 20

#b
t <- (6.5-6)/(1/sqrt(20))
t

#c
p <- 2*pt(abs(t), n - 1, lower.tail = FALSE)
p


#3
#a


#4
#a
newyork <- HomesForSale$Price[HomesForSale$State == "NY"]
mean(newyork)
sd(newyork)
length(newyork)

#b
t.test(newyork, mu=265, alternative = "greater")


#5
#h0 : p = .7
#ha : p > .7

z <- (.75 - .7)/(sqrt((.7*(1-.7))/100))
z

1 - pnorm(z)