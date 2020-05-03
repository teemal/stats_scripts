#1a

pnorm(1.34)

#1b
1 - pnorm(1.22)
#or
pnorm(1.22, lower.tail=FALSE)


#1d
pnorm(2.67) -  pnorm(-1.56)


#2a 
qnorm(.34)

#2b
qnorm(.75)

#2c
qnorm(.025)
qnorm(.975)

#3a
qnorm(.95,10,4)

#3b
qnorm(.35,100,25)


#4a
pnorm(2, 5.2,1.52)

#4b
pnorm(5,5.2,1.52) - pnorm(3,5.2,1.52)

#4c
qnorm(.9,5.2,1.52)

#5a
pnorm(5,7.5,1.2)

#5b
1 - pnorm(11, 7.5, 1.2)

qnorm(.95, 7.5, 1.2)
