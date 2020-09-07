Chd<-read.csv("/Users/Hossein/Desktop/DataScience/chdage.csv")

summary(chd)

m0<-glm(chd~age,family=binomial,data=Chd)
summary(m0)

mr<-glm(chd~1,family=binomial,data=Chd)

anova(mr,m0)


bankDS<-read.csv("/Users/Hossein/Desktop/DataScience/bank.csv")

summary(bankDS)

bankDS$day=factor(bankDS$day)
levels(bankDS$day)

mf<-glm(deposit~.,family=binomial,data=bankDS)

summary(mf)

names(bankDS)
