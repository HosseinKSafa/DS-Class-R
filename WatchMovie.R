library(data.table)


basicData<-fread('/Users/Hossein/Desktop/DataScience/1_5176959965767663735/basics.tsv', na.strings = '\\N', encoding = 'Latin-1', quote = "")
head(basicData)
summary(basicData)

basicData$primaryTitle[basicData$primaryTitle=="Carmencita"]
sum(which(basicData$primaryTitle=="Pauvre Pierrot"))

unique(basicData$primaryTitle)
