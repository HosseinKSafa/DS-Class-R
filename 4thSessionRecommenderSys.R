ratings=read.csv('/Users/Hossein/Desktop/DataScience/ratings.csv')

meta=read.csv('/Users/Hossein/Desktop/DataScience/movies_metadata.csv')

head(ratings)
head(meta)

meta= meta[c('id','vote_average','title','popularity','vote_count')]
ratings= ratings[c('userId','rating','movieId')]

names(meta)
dim(meta)

head(meta,1)
head(ratings)

mergID<-merge.data.frame(ratings,meta,by.x = "movieId",by.y = "id")

head(mergID)

mean(mergID[mergID['movieId']=='800','rating'])

unique(mergID$title)


mergID[mergID['movieId']=='16','title']
mean(mergID[mergID['movieId']=='16','rating'])

m800<-mergID[mergID['movieId']=='800',]
m800

m800$userId[m800$rating==max(m800$rating)]


u817<-mergID[mergID$userId=='817',]
u1893<-mergID[mergID$userId=='1893',]

u817<-u817[c('movieId','rating')]

u1893<-u1893[c('movieId','rating')]

nrow(u817)
nrow(u1893)

common=merge.data.frame(u817,u1893,"movieId")

common

names(common)

ra1893<-common$rating.y
ra817<-common$rating.x


ra1893
ra817

cor(ra1893, ra817) 
sqrt(sum((ra1893-ra817)^2))/dim(common)[1]


u817<-mergID[mergID['userId']==817,] 
u7199<-mergID[mergID['userId']==7199,] 
u817m=u817[c("movieId","rating")] 
u7199m=u7199[c("movieId","rating")] 
common=merge.data.frame(u817m,u7199m,"movieId") 
ra7199<-common$rating.y
ra817<-common$rating.x
cor(ra7199, ra817) 
sqrt(sum((ra7199-ra817)^2))/dim(common)[1]

suggestions=u817[u817["rating"]==5 & u817["vote_average"]>7.9 , 'movieId']

suggestions
dim(ratings)

names(ratings)

setdiff(suggestions,common$movieId)

