#1
x <- 0:15
p_x <- dhyper(x, 5, 10, 4)
print(p_x)



#3
x <- 0:10
p_x <- dbinom(x, 10, .6)
dist <- data.frame(x, p_x)
dist

#6
exp_val <- 1*p_x[2] + 2*p_x[3] + 3*p_x[4] + 4*p_x[5] + 5*p_x[6] + 6*p_x[7] + 7*p_x[8] + 8*p_x[9] + 9*p_x[10] + 10*p_x[11]
print(exp_val)

#7
v_x <- (0- exp_val)**2*p_x[1] + (1- exp_val)**2*p_x[2] + (2- exp_val)**2*p_x[3] + (3- exp_val)**2*p_x[4] + (4- exp_val)**2*p_x[5] + (5- exp_val)**2*p_x[6] + (6- exp_val)**2*p_x[7] + (7- exp_val)**2*p_x[8] + (8- exp_val)**2*p_x[9] + (9- exp_val)**2*p_x[10] + (10- exp_val)**2*p_x[11])
v_x
#8
x <- 0:5
p_x <- dhyper(x, 3, 7, 5)
print(sum(p_x[3:5]))

#9
x<-0:16
p_x = dbinom(x, 16, .22)
dist<-data.frame(x,p_x)
dist
print(1 - sum(p_x[1:4]))


#12
sum(dpois(0:1, 1.533))


#13 ?
x<-dpois(0:30, 10)
x
plot(x ~ x)

#15
y <- 1 - sum(x[1:11])
y

x[1:11]