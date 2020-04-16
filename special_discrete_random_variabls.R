#1
x <- 0:15
p_x <- dhyper(x, 5, 10, 4)
print(p_x)



#3
x <- 0:10
p_x <- dbinom(x, 10, .6)
dist <- data.frame(x, p_x)
dist

#4



#6
exp_val <- 1*p_x[2] + 2*p_x[3] + 3*p_x[4] + 4*p_x[5] + 5*p_x[6] + 6*p_x[7] + 7*p_x[8] + 8*p_x[9] + 9*p_x[10] + 10*p_x[11]
print(exp_val)

#8
x <- 0:5
p_x <- dhyper(x, 3, 7, 5)
print(sum(p_x[3:5]))

#9
x<-0:16
p_x = dbinom(x, 16, .22)
dist<-data.frame(x,p_x)
dist
print(sum(p_x[5:16]))


#12
sum(dpois(0:1, 1.533))


#13 ?


#15

