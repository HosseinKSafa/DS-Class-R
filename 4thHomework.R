#4th Homework Solution and Analysis

#A
bankDS<-read.csv("/Users/Hossein/Desktop/DataScience/bank.csv")
bankDS$day<-factor(bankDS$day)
summary(bankDS)

sampleDS<-sample(nrow(bankDS),floor(0.2*nrow(bankDS)),replace = F)
testDS<-bankDS[sampleDS,]
trainDS<-bankDS[-sampleDS,]

#testDS<-testDS[,-c(which(colnames(testDS)=="duration"))]
#trainDS<-trainDS[,-c(which(colnames(trainDS)=="duration"))]
summary(trainDS)
summary(testDS)

glmFull<-glm(deposit~.,family=binomial,data=trainDS)
stBack=step(glmFull,direction='backward')

#B
summary(glmFull)


#C
phat<-predict(stBack,testDS,type='response')

#D
yhat<-ifelse(phat>=0.5,"yes","no")

#E

sum(yhat==testDS$deposit)/NROW(testDS)

testDS[1,]
xnew=data.frame(3,'admin.','married','primary','no',2343,'yes','yes','unknown',5,'may',2000,1,-1,0,'unknown')
names(xnew)=names(testDS)[1:ncol(testDS)-1] 
xnew[1,]
xnew$day=testDS[1,]$day
predict(stBack,xnew,type='response')

