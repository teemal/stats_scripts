x <- 0:3
p_x <- dhyper(x, 4,5,3)
print(p_x[1] + p_x[2] + p_x[3])

#8 with replacement
x <- 0:5
p_x <- dbinom(x, 5, 20/130)
dist <- data.frame(x, p_x, digits=3)
print(dist)

#8 without
x <- 0:5
p_x <- dhyper(x, 20, 110, 5)
dist <- data.frame(x, p_x, digits=3)
print(dist)

#10b
dpois(10,8)

#10c
dpois(30,32)


#11b
a <- dpois(0,5)
b <- dpois(1,5)
c <- dpois(2,5)

print(a + b + c)

#11c
a <- 1 - sum(dpois(0:19, 21.43))
a

#12
dpois(3,4.5)


#13 example
par(mfrom = c(3,2))
x <- 0:30
mu <- seq(2,12,2)
for(y in mu)
{
  plot(dpois(x,y)~x)
  title(paste("Mean is",y))
}