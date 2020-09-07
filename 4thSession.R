library(faraway)
library(mice)
 d<-pima
 
 d$insulin[d$insulin==0]=NA
 d$glucose[d$glucose==0]=NA
 d$diastolic[d$diastolic==0]=NA
 d$triceps[d$triceps==0]=NA
 d$bmi[d$bmi==0]=NA
 
 imput=mice(d,m=5,method = 'pmm')
 
 imput$imp$bmi
 ?complete
 com<-complete(imput,1)
 
 head(com)
 
 head(d)
 
 library(VIM)
 
 ?xyplot
 xyplot(imput, insulin ~ triceps+glucose+diastolic| .imp)
 
 stripplot(imput)
 
 densityplot(imput)
 
 
 