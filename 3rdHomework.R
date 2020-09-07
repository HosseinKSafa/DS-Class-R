
#3rd Homework Solution and Analysis

#A
batteryDF<-read.csv("/Users/Hossein/Desktop/DataScience/battery.csv")

#B
summary(batteryDF)
str(batteryDF)
hist(batteryDF$cycles)

#C

#D
batteryLM<-lm(cycles~.,data = batteryDF)
summary(batteryLM)

#F
library(nortest)
ad.test(batteryLM$residuals)

plot(batteryLM$fitted.values, batteryLM$residuals,xlab="Fitted Values",ylab="Residuals")
abline(h=mean(batteryLM$residuals),col='green',lwd=2)

residualLM<-lm(abs(batteryLM$residuals)~batteryLM$fitted.values)
summary(residualLM)

#log
batteryLM<-lm(log(cycles)~.,data = batteryDF)
summary(batteryLM)
plot(batteryLM$fitted.values, batteryLM$residuals,xlab="Fitted Values",ylab="Residuals")
abline(h=mean(batteryLM$residuals),col='green',lwd=2)

residualLM<-lm(abs(batteryLM$residuals)~batteryLM$fitted.values)
summary(residualLM)

#G
library(faraway)

halfnorm(influence(batteryLM)$hat,nlab = 2,ylab = 'Leverages')

plot(rstandard(batteryLM),fitted.values(batteryLM))

points(rstandard(batteryLM)[48],fitted.values(batteryLM)[48],col='red')
points(rstandard(batteryLM)[28],fitted.values(batteryLM)[28],col='red')

which(rstandard(batteryLM)>3)

points(rstandard(batteryLM)[11],fitted.values(batteryLM)[11],col='red')

#H
t<-rstudent(batteryLM)
pValue<-2*(1-pt(t,df = 75-6-1))
which(pValue<0.05/75)

#I
cook<-cooks.distance(batteryLM)
halfnorm(cook,nlab = 2 )

#J
vif(batteryLM)

#K
lcycles<-lm(log(cycles)~.,data = batteryDF)


summary(lcycles)


ad.test(lcycles$residuals)

plot(lcycles$fitted.values, lcycles$residuals,xlab="Fitted Values",ylab="Residuals")
abline(h=mean(lcycles$residuals),col='green',lwd=2)

residualLM<-lm(abs(lcycles$residuals)~lcycles$fitted.values)
summary(residualLM)

halfnorm(influence(lcycles)$hat,nlab = 2,ylab = 'Leverages')

plot(rstandard(lcycles),fitted.values(lcycles))
which(rstandard(lcycles)>3)


t<-rstudent(lcycles)
pValue<-2*(1-pt(t,df = 75-6-1))
which(pValue<0.05/75)
