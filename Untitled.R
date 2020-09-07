
seatDF<-read.csv("/Users/Hossein/Desktop/DataScience/Seatdata.csv")

summary(seatDF)

seatLM<-lm(SeatX~.,data = seatDF)

summary(seatLM)

sealLM<-lm(SeatX~I(Stature+Sitting.Height)+SHS+BMI+L11+H17+Weight,data = seatDF)
summary(sealLM)
anova(sealLM,seatLM)

library(faraway)

vif(seatLM)
