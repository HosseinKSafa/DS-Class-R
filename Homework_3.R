#A
batteryDF<-read.csv("/Users/Hossein/Desktop/DataScience/battery.csv")

#B
summary(batteryDF)
str(batteryDF)

#C

#D
batteryLM<-lm(cycles~.,data = batteryDF)
summary(batteryLM)
library(faraway)


hatLM<-influence(batteryLM)
h<-hatLM$hat

length(h)
p=6
n<-nrow(batteryDF)
n
h
3*p/n
which(h>2*p/n)

halfnorm(influence(batteryLM)$hat,nlab = 2,ylab = 'Leverages')


colMeans(batteryDF)
xx<-sqrt(diag(var(batteryDF)))
batteryDF[48,]
batteryDF[28,]

vif(batteryLM)

plot(batteryLM$fitted.values, batteryLM$residuals,xlab="Fitted Values",ylab="Residuals")
abline(h=mean(batteryLM$residuals),col='green',lwd=2)

residualLM<-lm(abs(batteryLM$residuals)~batteryLM$fitted.values)
summary(residualLM)

hist(batteryLM$residuals)

qqnorm(batteryLM$residuals)

library(nortest)
ad.test(batteryLM$residuals)
