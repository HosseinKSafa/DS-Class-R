rm(list=ls(all.names = TRUE))
library(faraway)

d<-read.csv("/Users/Hossein/Desktop/DataScience/Seatdata.csv")
summary(d)
mf<-lm(SeatX~Stature+Sitting.Height+SHS+BMI+Weight+L11+H17,data=d)
mr<-lm(SeatX~Sitting.Height+BMI+Weight+L11+H17,data=d)

anova(mr,mf)

mr<-lm(SeatX~I(Stature+Sitting.Height)+SHS+BMI+Weight+L11+H17,data=d)
anova(mr,mf)

t=(summary(mf)$coef[2,1]-0.6)/summary(mf)$coef[2,2] 
t
pvalue=2*(1-pt(abs(t),nrow(d)-8))
pvalue


mr<- lm(SeatX~offset(0.6*Stature)+Sitting.Height+SHS+BMI+Weight+L11+H17,data=d)
anova(mr,mf)
summary(mr)


vif(mf)

mf<-lm(SeatX~Stature+SHS+BMI+Weight+L11+H17,data=d)
vif(mf)

mf<-lm(SeatX~Stature+SHS+BMI+L11+H17,data=d)
vif(mf)

mf<-lm(SeatX~Stature+SHS+BMI+L11+H17,data=d)

e<-mf$residuals
yhat<-mf$fitted.values
hist(mf$residuals)
qqnorml(mf$residuals)

install.packages("nortest")

acf(mf$residuals)

