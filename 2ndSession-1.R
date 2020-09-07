g=c("male","female","female","male","female")
g

is.factor(g)
is.character(g)

g=factor(g)
g

levels(g)


levels(g)=c("Z","A")

levels(g)


levels(g)=c("F","M")
levels(g)

B<-data.frame(Names=w,Salary=s)
B

w<- c("Ali","Maryam","Mina","Shahin","Saghar") 
s<-c(1600,2800,3200,4500,5000) 
B<-data.frame(Names=w,Salary=s)
B

sd=c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11","2015-03-27")
start_date=as.Date(sd)

start_date[1]-start_date[2]

as.numeric(start_date[1]-start_date[2])

Sys.Date()

weekdays(Sys.Date())

weekdays(start_date[2])

names(B)

B$Names

B$StartDate<-start_date

B$StartDate
B

B$G<-g
B

str(B)

B$Names=as.character(B$Names)

str(B)
summary(B)

B[4,3]

Sys.Date()-B[4,3]

as.numeric(Sys.Date()-B[4,3])

mean(B$Salary)

sd(B$Salary)

tapply(B$Salary,B$G,mean)

tapply(B$StartDate,B$G,diff)

B<-rbind(B,c("Yaser",3000,"2019-01-2","M"))
B

B

B=B[-6,]
B


B=B[-7,]

B=B[-9,]
B

B=B[-7,]
B

B
B=B[-7,]
B
B<-rbind(B,c("Yaser",3000,"2019-01-2","M"))
B

B=B[-6,]
B

B<-rbind(B,c("Yaser",3000,"2019-01-2","M"))
B

B=B[-7:-8,]
B

order(B$Salary)

order(B$Salary,decreasing = T)

row.names(B)=c(1,2,3,4,5,6)
row.names(B)=seq(6)
B
order(B$Salary)


x <- list("salam","h",3,4,5,6)
x

y <- list("black","g",c(3,4,5),2.5,6)
y

x[2]
y[[3]][2]



z<-c(x,y)
z


names(x)
names(x)=c("A","B","C","D","E","F")


names(x)

x$C*2
x

x[7]="Hossein"
x




x$C=NULL
x


H=unlist(y)
H


g<-c ( "Data Science is cool", "just, give it some time!")
g

paste(g,", and I agree")
g
paste(c("Everybody knows", " I would say,"),g)

h<-paste(c("Everybody knows"," I would say"),g,collapse=".")
h

l<-paste(c("Everybody knows"," I would say"),g,collapse="#")
l

substr(h,2,20)
strsplit(h," ")
strsplit(h,"e")


strsplit(c(h,'hey. how'),"[.]")

paste(unlist(strsplit(h," ")),collapse="")

nchar(paste(unlist(strsplit(h," ")),collapse=""))

sub("knows","realizes",h)
gsub(" ","",h)



write.csv(B,"/Users/Hossein/Desktop/DataScience/inClassFiles/ds.csv")
bdat<-read.csv("/Users/Hossein/Desktop/DataScience/inClassFiles/ds.CSV")

bdat=bdat[,-1]
bdat


library(faraway)






















