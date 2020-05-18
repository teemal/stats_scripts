#1
(4.25/50 + 3.46/48)**2 / ((4.25/50)**2/49 + (3.46/48)**2/47)

qt(.005, df=95.63)
#annnd a bunch of stuff Pablo went too fast to cover :)

#2
point_est<-82-75
point_est

#annnd he did cover this at all :)

#3
manual<-epa2012$city_mpg[epa2012$transmission_desc=="Manual"]
auto<-epa2012$city_mpg[epa2012$transmission_desc=="Automatic"]
t.test(manual, auto, conf.level = .95)

