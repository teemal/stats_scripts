#11
data1 <- c(36,59,66,66,70,71,75,79,81)
range(data1)

bound <- seq(30, 90, 10)

data1.cut <- cut(data1, bound, right = FALSE)
data1.freq <- table(data1.cut)
data1.freq
cbind(data1.freq)
hist(data1, breaks = bound, right = FALSE)
hist(data1, breaks = bound, freq = FALSE, right = FALSE)

#13
library(readxl)
entgend = read_excel('entgend.xlsx')
men <- entgend$entertainment[entgend$gender == "male"]
women <- entgend$entertainment[entgend$gender == "female"]
mean(men)
