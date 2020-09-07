rm(list=ls(all.names = TRUE))
library(faraway)

d<-read.csv("/Users/Hossein/Desktop/DataScience/Seatdata.csv")
summary(d)
mf<-lm(SeatX~Stature+Sitting.Height+SHS+BMI+Weight+L11+H17,data=d)

summary(mf)
