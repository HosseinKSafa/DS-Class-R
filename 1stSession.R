n = 100
n<-100
n
x<-c(1,2 ,3,4,5)
?c
x
x=c(3,4,5,1,12)
x
n
x=1:100
x
y=seq(1,24.5,.75)
y
z=seq(-11,34.24,.24)
z

a=seq(20)
a
x[31]
Z[23]
z[23]
z

x=z+a
x
a
z
g<-log(x^2+3)
g


x=seq(1,20)
x
y=cumsum(x)
y
k<-sort(y,decreasing = F)
k
g<-seq(20,.24,-.24)
g
?sort
x=seq(1,20)
y=seq(1,20)
l=crossprod(x,y)
l
l1=x*y
l1
sum(l1)
l
range(x)
diff(x)
diff(range(x))
g<-log(x^2+3)
diff(g)
rep(1,5)
rep(c(1,4),2)

x=c[1,3,4,5,6]

dd<-c(rep(FALSE,10),rep(TRUE,10))
dd

x=seq(1,20)
x
x[dd]


cc=rep(c(TRUE,FALSE),10)
cc
x[cc]
x>3
x<10
x[x!=3]
x[x==30]
x[x==3]
x[-2]
x
x=x[-c(3:8)]
x
x=seq(1,23,.5)
which(x>3&x<=7)
which.max(x)
x
x[which(x>3)]
x<-c(seq(5),NA)
x

is.na(x)
mean(x)
x
mean(x,na.rm = T)

x[is.na(x)]=mean(x,na.rm=T)
x
h<-cumsum(x)
h
?cumsum

mat1<-matrix(c(1,2,3,4), nrow = 2, ncol = 2)
mat1
mat1<-matrix(x,nrow=3,ncol=2)
mat1

mat1<-matrix(mat1,nrow=2,ncol=3)
mat1


X1<-c(2,3,4) 
X2<-c(0,6,7) 
X<-cbind(X1,X2) 
Y<-rbind(X1,X2)

X
Y


A<-matrix(c(1,2,3,4),nrow=2,ncol=2) 
B<- matrix(c(0,2,1,4),nrow=2,ncol=2) 
C<-cbind(A,B)
R<-rbind(A,B)
C
R

dim(A)
dim(C)
dim(R)


c(A)
A
c(R)
R

cbind(1,A)
A

rbind(A,0)
A

cbind(0,A)

dim(A)
A
dim(A)
diag(A)
diag(c(A))
c(A)
AA=c(A)
AA
diag(AA)

diag(5,4)
diag(5)

A[upper.tri(A)]


rnorm(36,10,1)
mean(rnorm(36,10,1))
mean(rnorm(4))


BB<-matrix(rnorm(36,1,1),6,6)
BB

CC<-matrix(rnorm(36,6,18),,6,6)
CC
mean(CC)
?runif

A<-matrix(rnorm(36,0,1), nrow = 6, ncol = 6)
colnames(A)=c("A","B","C","D","E","F")
A
rownames(A)=c("A","B","C","D","E","F")
A

A[1]
A[1,2]
A[1,]
A['A',]


colnames(A)
rownames(C)
A[,2]
A[,'B']


A[-c(2,3),]
A

apply(A,1,mean)
      