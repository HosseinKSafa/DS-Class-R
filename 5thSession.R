ratings=read.csv('/Users/Hossein/Desktop/DataScience/ratings.csv')

meta=read.csv('/Users/Hossein/Desktop/DataScience/movies_metadata.csv')

dim(ratings)
names(ratings)
range(ratings)

names(meta)

meta= meta[c('id','vote_average','title','popularity','vote_count')]

ratings= ratings[c('userId','rating','movieId')]

dim(meta)
dim(ratings)

head(ratings)
 
range(ratings$rating)
