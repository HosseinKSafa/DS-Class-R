library(faraway)


d<-pima
sample(d)
d$glucose[d$glucose==0]=NA
d$diastolic[d$diastolic==0]=NA
d$insulin[d$insulin==0]=NA
d$bmi[d$bmi==0]=NA
d$triceps[d$triceps==0]=NA

#Scater Plot used when we want to comparison 2 Data
plot(d$bmi,d$triceps,xlab = "BMI",ylab = "Triceps",main="")

d$test=factor(d$test)
#اسکتر برای بررسی رابطه بین دو متغیر ترسیم می شود
plot(d$triceps,d$bmi, ylab="BMI",main="")
plot(d$test,d$diastolic,ylab="Diastolic",main="")


pairs(d[,c("glucose","bmi","triceps","insulin")])

library(plotrix)
par(mfrow=c(2,2))

plot(d$bmi,d$triceps,xlab="BMI",ylab="Triceps",main="") 
plot(d$test,d$diastolic,ylab="Diastolic",main="")
hist(d$diastolic,xlab="Diastolic",main="",col = "green",border = "red") 
pie3D(c(500,268),labels = c('Negative','Positivie'),explode = 0.1, main = "Pie Chart of Test Results")

library(mice)
library(VIM)


summary(d)

d$diastolic[d$diastolic==0]=NA 
d$glucose[d$glucose==0]=NA 
d$triceps[d$triceps==0]=NA 
d$bmi[d$bmi==0]=NA 
d$insulin[d$insulin==0]=NA

aggr<- aggr(d, col=c('black','red'), numbers=TRUE, sortVars=TRUE, labels=names(d), cex.axis=.7, gap=1, ylab=c("Barplot of missing data","Patterns"))


md.pattern(d)

marginplot(d[,c(2,5)])
marginplot(d[,c(4,5)])
marginplot(d[,c(8,4)])
?is.na
is.na(d)
sum(is.na(d))/length(d)
missnum<-function(x){ a<-sum(is.na(x))/length(x);return(a)} 


missnum(d[1,])

aa<-missnum(d)
aa
miss<-apply(d,1,missnum)
miss
length(miss)

which(miss>0.3)

mean(miss[miss>0.3])

?sd

max(miss)
?which.max
which.max(miss)

maxNum<-max(miss)
maxNum
which(miss==max(miss))

sum(which(miss<0.3))


sum(miss<0.3&miss>0.1)

mean(d$age[is.na(d$triceps)])


mean(d$age[is.finite(d$triceps)])

#انحراف از معیار
sd(d$age[is.finite(d$triceps)])

d$test

which(d$test==1)

d$diastolic[d$test==1]
?mean
mean(d$diastolic[d$test==1],na.rm = T)

mean(d$diastolic[d$test==0],na.rm = T)

# اعمال میانگین برای مقادر یک ستون براساس لولهای یک ستون دیگر
tapply(d$diastolic[is.finite(d$diastolic)],d$test[is.finite(d$diastolic)],mean)


