rm(list=ls(all.names=TRUE))
F<-read.csv('/Users/Hossein/Desktop/DataScience/finish.csv',header=TRUE)
Age<-read.csv('/Users/Hossein/Desktop/DataScience/Age.csv',header=TRUE)

Finish=as.matrix(F)
Age=as.matrix(Age)

plot(Age,Finish)
 
#Fit a linear model
m1<-lm(Finish~Age)
m1$coefficients

summary(m1)

#Fit a nonlinear model in x (note that it is linear in beta)
lage<-log(Age)
m2<-lm(Finish~Age+lage)
#compute the mean of finishing times for all ages 
mage=tapply(Finish,Age,mean)
#Scatterplot of age and finishing times
plot(Age,Finish,ylab="Finishing Time",col="gray")
#Get the unique values of Age
A=sort(unique(Age))
#plot age versus mean of finishing times for each age level
points(A,mage,col='blue')
#plot the fitted line using the linear model
points(Age,m1$fitted.values,col='red',type="l",lwd=3)
#plot the fitted regression using the nonlinear model
points(Age,m2$fitted.values,col='green',type="l",lwd=3)
