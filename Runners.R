library(faraway)
Age=read.csv("/Users/Hossein/Desktop/DataScience/Age.csv", header = TRUE)
finishTime=read.csv("/Users/Hossein/Desktop/DataScience/finish.csv",header = TRUE)

Age<-as.matrix(Age)
Finish<-as.matrix(finishTime)

plot(Age,Finish)

firstLM<-lm(Finish~Age)
summary(firstLM)


logAge<-log(Age)

secondLM<-lm(Finish~Age+logAge)
summary(secondLM)


mAge<-tapply(Finish, Age, mean)
A<-sort(unique(Age))
A
