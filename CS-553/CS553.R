dataFile <- read.csv("C:/Users/Harsh Kevadia/Downloads/data CS553.csv")
set.seed(20)

clust <- kmeans(dataFile[,-1],2,nstart = 20)

clust

table(clust$cluster,dataFile[,1])