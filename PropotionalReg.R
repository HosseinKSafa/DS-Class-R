library(VGAM)
housingDS<-read.csv("/Users/Hossein/Desktop/DataScience/DataSet/housing.csv")
summary(housingDS)

housingTemp=housingDS
housingTemp$Satisfaction=factor(housingTemp$Satisfaction,ordered = TRUE)
levels(housingTemp$Satisfaction)
summary(housingTemp)
housingTemp$Satisfaction

propReg=vglm(Satisfaction~.,data = housingTemp,family = cumulative(parallel = T))
summary(propReg)
