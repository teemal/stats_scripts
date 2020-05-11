#1
#a
margin_error <- 1.96 * 12.08
40 - margin_error
40 + margin_error
#b
70 - margin_error
70 + margin_error
#c
84 - margin_error
84 + margin_error

#2
67 + 1.96 * (3/sqrt(200))
67 - 1.96 * (3/sqrt(200))

# ----OR----- values will be slightly off because 1.96 is a heavy rounding of qnorm(.95)
67 + qnorm(.95) * (3/sqrt(200))
67 - qnorm(.95) * (3/sqrt(200))

#4
#a
1 - pt(2.45, df = 19)

#b
pt(1.34, df = 36)

#c
qt(.025, df = 25)
qt(.975, df = 25)

#d
qt(.05, 33)

#5
40000 + (qt(.025, 49) * (10000/sqrt(50)))
40000 - (qt(.025, 49) * (10000/sqrt(50)))

#6
87 + abs((qt(.05, 39) * (10/sqrt(40))))
87 - abs((qt(.05, 39) * (10/sqrt(40))))

#7
data1 <- c(41,50,35,44,45,42,43,47,41,39,45,45,39,40,45)
t.test(data1, conf.level = .95)

#8
.761 + (1.96 * (sqrt((.761) * (1 - .761)/1000)))
.761 - (1.96 * (sqrt((.761) * (1 - .761)/1000)))

