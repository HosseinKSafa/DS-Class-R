library(faraway)

data(pima)
d<-pima

d$diastolic[d$diastolic==0]=NA 
d$glucose[d$glucose==0]=NA 
d$triceps[d$triceps==0]=NA 
d$bmi[d$bmi==0]=NA 
d$insulin[d$insulin==0]=NA


#Answer of 1st Question
hist(d$age[is.na(d$triceps)],xlab = "Age for Samples with Not Available Triceps",main="",col = "green",border="red")
hist(d$age[is.finite(d$triceps)],  xlab = "Age for Samples with Triceps",main="",col = "green",border="red")


#Answer of 2nd Question
mean(d$bmi[d$insulin[is.finite(d$insulin)]>mean(d$insulin[is.finite(d$insulin)])],na.rm=T)
mean(d$bmi[d$insulin[is.finite(d$insulin)]<mean(d$insulin[is.finite(d$insulin)])],na.rm=T)


#Answer of 3rd Question
Insulin<- d$insulin[is.finite(d$insulin)]

d$test=factor(d$test)
levels(d$test)=c('Negative','Positive')
levels(d$test)

mean4NP<-tapply(d$insulin[is.finite(d$insulin)],d$test[is.finite(d$insulin)],mean)
sd4NP<-tapply(d$insulin[is.finite(d$insulin)],d$test[is.finite(d$insulin)],sd)
lengthNP<-tapply(d$insulin[is.finite(d$insulin)],d$test[is.finite(d$insulin)], length)

mean4NP
sd4NP

#Confidence Intervals for Insulin Variable for Negative Level
CInegPlus<-mean4NP[1]+(1.96*(sd4NP[1]/sqrt(lengthNP[1])))
CInegMines<-mean4NP[1]-(1.96*(sd4NP[1]/sqrt(lengthNP[1])))

CInegPlus
CInegMines

#Confidence Intervals for Insulin Variable for Positive Level
CIposPlus<-mean4NP[2]+(1.96*(sd4NP[2]/sqrt(lengthNP[2])))
CIposMines<-mean4NP[2]-(1.96*(sd4NP[2]/sqrt(lengthNP[2])))

CIposPlus
CIposMines


