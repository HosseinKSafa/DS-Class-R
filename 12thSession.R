
hdDS<-read.csv('/Users/Hossein/Desktop/DataScience/hd_c.csv')

summary(hdDS)
str(hdDS)

hist(hdDS$blood.sugar)

hdDS$sex<-factor(hdDS$sex)
hdDS$chest_pain<-factor(hdDS$chest_pain)
hdDS$blood.sugar<-factor(hdDS$blood.sugar)
hdDS$rest.ecg<-factor(hdDS$rest.ecg)
hdDS$exang<-factor(hdDS$exang)
hdDS$ST.slope<-factor(hdDS$ST.slope)

library(VGAM)
ml<-vglm(y~.,data=hdDS,family="multinomial")
summary(ml)


ml<-vglm(y~.-ST.depression..num.,data=hdDS,family=multinomial)
summary(ml)

p=predict(ml,type='response')
dim(p)
which.max(p[1,])
p[1,]
which.max(p[1,])
p[5,]
which.max(p[5,])




yhat=apply(p,1,which.max)
yhat
p[2,]







housingDS<-read.csv('/Users/Hossein/Desktop/DataScience/housing.csv')
summary(housingDS)
dim(housingDS)
nrow(housingDS)
