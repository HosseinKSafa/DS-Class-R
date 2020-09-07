#2nd HomeWork
#Queston a Answer:
df<-read.csv('/Users/Hossein/Desktop/DataScience/googleplayapps-c.csv',header = TRUE,stringsAsFactors = F)


#Question b Answer:
str(df)
summary(df)


#Question d Answer:
df$Category<-factor(df$Category)
levels(df$Category)<-seq(1,33,1)
levels(df$Category)


#Question e Answer:
uniqueType<-unique(df$Type)
uniqueType


#Question f Answer:
df$Type[df$Type==""]=NA
summary(df)

#Question g Answer:
df$Type<-factor(df$Type)
levels(df$Type)
summary(df)


#Question h Answer:
df$Last.Updated<-as.Date(df$Last.Updated,tryFormats = c("%m/%d/%Y","%Y/%m/%d","%Y/%d/%m","%m/%Y/%d","%d/%m/%Y","%d/%Y/%m"))


#Question i Answer:
df$Updated<-as.numeric(difftime(Sys.Date(),df$Last.Updated))
str(df)


#Question j Answer
head(df$Installs)
#instruction One2Five
spinst<-strsplit(df$Installs[1],"")
spinst<-unlist(spinst)
spinst<-spinst[-which(spinst=="+")]
spinst<-spinst[spinst!=","]
spinst<-paste(spinst,collapse = "")
spinst
#6
clearNum<-function(x){spinstr<-unlist(strsplit(x,""))
                      spinstr<-spinstr[-which(spinstr=="+")] 
                      spinstr<-spinstr[-which(spinstr==",")]
                      return(paste(spinstr,collapse = ""))}

df$Installs<-sapply(df$Installs,clearNum)
summary(df)


#Question k Answer
newDF<-df[c('Category','Rating','Reviews','Type','Updated')]
summary(newDF)
library(mice)
library(randomForest)
imputedNA<-mice(newDF,m=5,method = c('','rf','pmm','logreg',''))

?mice


#Question l Answer:
library(VIM)
newDFAggr<- aggr(newDF, col=c('grey','orange'), numbers=TRUE, sortVars=TRUE, labels=names(newDF), cex.axis=0.8, gap=1, ylab=c("Barplot of missing data","Patterns"))
marginplot(newDF[,c(2,3)])
marginplot(newDF[,c(3,4)])
marginplot(newDF[,c(2,4)])

#Question m Answer:
xyplot(imputedNA,Rating ~ Reviews+Type|.imp)


densityplot(imputedNA)



#Question n Answer:
imputedCom<-complete(imputedNA,4)
summary(imputedCom)

