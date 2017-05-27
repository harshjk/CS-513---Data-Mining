################################################################################
# Company     : Stevens Institute of Technology
# Purpose     : Home Work 8
# Project     : CS 513 - Spring 2017
# First Name  : Harsh
# Middle Name : Jagdishbhai
# Last Name   : Kevadia
# CWID        : 10420312
################################################################################
rm(list = ls())

#8.1."Hierarchical Clustering in R and the "average" linkage method to cluster the following  10 items

x<-c(7,10,13,21,28,28,35,43,44,50)
y<-c(57,62,63,71,78,88,89,90,94,98)  

xy<-cbind(x,y)

dxy<-dist(xy)

?hclust()
hcluster <- hclust(dxy, method="average")

plot(hcluster)

# 8.2 Clustering customers into 3 groups using k-means clustering algorithm based on
# International Plan, Voice Plan and  customer service calls 

data<-read.csv("C:/Users/Harsh Kevadia/Downloads/churn.csv")
View(data)
attach(data)

# Normalizing the dataset
mmnorm <-function(x,minx,maxx) {
  z<-((x-minx)/(maxx-minx))
  return(z) 
}

International_Plan<-ifelse(data$Int.l.Plan=='yes',1,0)
Voice_Plan<-ifelse(data$VMail.Plan=='yes',1,0)
Customer_Service_Calls <- mmnorm(data[,20],min(data[,20]),max(data[,20]))


normalized_data<-cbind(International_Plan,Voice_Plan,Customer_Service_Calls)
View(normalized_data)

c1<-kmeans(normalized_data,3)

c1
c1$size
c1$cluster
plot(data[c("Int.l.Plan","VMail.Plan","CustServ.Calls")],col=c1$cluster)