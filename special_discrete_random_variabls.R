#1
x <- 0:2
p_x <- dhyper(x, 5, 10, 4)
print(sum(p_x))

#3
x <- 0:10
p_x <- dhyper(x, 60, 40, 10)
dist <- data.frame(x, p_x)
print(p_x)


#6
exp_val <- 1*p_x[2] + 2*p_x[3] + 3*p_x[4] + 4*p_x[5] + 5*p_x[6] + 6*p_x[7] + 7*p_x[8] + 8*p_x[9] + 9*p_x[10] + 10*p_x[11]
print(exp_val)


