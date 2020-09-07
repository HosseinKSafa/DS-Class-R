library(faraway)

d<-pima
head(d,5)
head(d)

summary(d)

d$glucose==0
sum(d$glucose==0)

d$glucose[d$glucose==0]=NA

d$glucose[d$glucose==0]
summary(d)

d$glucose[d$glucose==0]=NA 
d$triceps[d$triceps==0]=NA 
d$bmi[d$bmi==0]=NA 
d$insulin[d$insulin==0]=NA
summary(d)

hist(d$diastolic,xlab="Diastolic",main="",col = "green",border="red")

boxplot(d$diastolic,ylab="Diastolic",main="",col="blue")

d$test=factor(d$test)

summary(d)

levels(d$test)

levels(d$test)=c("Negative","Positive")

negCount<-sum(d$test=='Negative')
posCount<-sum(d$test=='Positive')
negCount
posCount

lbl=c(posCount,negCount)

lbl

library(plotrix)


pie3D(lbl,labels = levels(d$test),explode = 0.1, main = "Pie Chart of Test Results")
pie(lbl,labels = levels(d$test),explode = 0.1, main = "Pie Chart of Test Results")
hist(d$diastolic,xlab="Diastolic",main="",col = "green",border="red")
boxplot(d$diastolic,ylab="Diastolic",main="",col="blue")

