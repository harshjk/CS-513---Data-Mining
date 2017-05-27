################################################################################
# Company     : Stevens Institute of Technology
# Purpose     : Final Exam - Question  1, 4 and 5
# Project     : CS 513 - Spring 2017
# First Name  : Harsh
# Middle Name : Jagdishbhai
# Last Name   : Kevadia
# CWID        : 10420312
################################################################################
rm(list = ls())

################################################################################
# Problem # 1: (20 points)
#
#Suppose that we have the following normalized data points with x, y coordinates:
#  (2,1) (1,2) (2,2) (3,2) (2,3) (4,3) (4,4) (4,6) (5,4) (4,5)
#Using R, 
#a.	Identify the cluster by applying the kmeans algorithm with k=2 and again with k=3.
#b.	What is the 'between-cluster variation' and the 'within cluster variation' for each k? 
#c.	Perform hierarchical clustering using 'Single linkage" and "Complete linkage" methods.
#d.	Identify two clusters by applying SOM.  
#
################################################################################

# Create Vector x and y for x, y Coordinates
x <- c(2,1,2,3,2,4,4,4,5,4)
y <- c(1,2,2,2,3,3,4,6,4,5)  

#Create new vector which is used to combine x and y
xy <- cbind(x,y)

#Find Euclidean distance
dxy <- dist(xy)

# Identify the cluster by applying the kmeans algorithm with k=2 and again with k=3.
#For k=3
c1<-kmeans(xy,3)
c1$cluster
c1$centers

#plot the clusters
plot(xy,col=c1$cluster)

#For k=2
c2<-kmeans(xy,2)
c2$cluster
c2$centers

#plot the clusters
plot(xy, col=c2$cluster)

#Perform hierarchical clustering using 'Single linkage" and "Complete linkage" methods.

# Make hierarchical cluster with "single linkage" method
hcluster <- hclust(dxy, method="single")

# plot hierarchical cluster
plot(hcluster)

# Make hierarchical cluster with "Complete linkage" method
hcluster <- hclust(dxy, method="complete")

# plot hierarchical cluster
plot(hcluster)

#4.	Identify two clusters by applying SOM. 

library(kohonen)
#set.seed(101)

?som
training<-xy[,-2]


somdata<-som(as.matrix(training),grid=somgrid(3,1))
summary(somdata)

str(somdata)
table(cluster=somdata$unit.classif,xy[,2])
plot(somdata)


## Make Dataset usefull for the Model creation.

churnData<-read.csv("C:/Users/Harsh Kevadia/Downloads/churn.csv")
View(churnData)

## Seperate Churn Value form the dataset as Factor and if churn value is False. then churn value convert into 0 & if churn value is True. then churn value convert into 1
churn <- as.factor(churnData$Churn.)
churn <- data.frame(churn)

churn[churn$churn =="False.","Output"] <- 0 
churn[churn$churn =="True.","Output"] <- 1
churn = as.factor(churn$Output)
#churn <- data.frame(churn)
#is.factor(churn$churn)

## Seperate Int_l_Plan Value form the dataset as Factor and if Int_l_Plan value is no then Int_l_Plan value convert into 0 & if Int_l_Plan value is yes then Int_l_Plan value convert into 1
intlPlan <- as.factor(churnData$Int.l.Plan)
intlPlan <- data.frame(intlPlan)

intlPlan[intlPlan$intlPlan =="no","Output"] <- 0 
intlPlan[intlPlan$intlPlan =="yes","Output"] <- 1
intlPlan = as.factor(intlPlan$Output)
intlPlan <- data.frame(intlPlan)
is.factor(intlPlan$intlPlan)

## Seperate VMail_Plan Value form the dataset as Factor and if VMail_Plan value is no then VMail_Plan value convert into 0 & if VMail_Plan value is yes then VMail_Plan value convert into 1
vMailPlan <- as.factor(churnData$VMail.Plan)
vMailPlan <- data.frame(vMailPlan)

vMailPlan[vMailPlan$vMailPlan =="no","Output"] <- 0 
vMailPlan[vMailPlan$vMailPlan =="yes","Output"] <- 1
vMailPlan = as.factor(vMailPlan$Output)
vMailPlan <- data.frame(vMailPlan)
is.factor(vMailPlan$vMailPlan)

## Seperate CustServ_Calls Value form the dataset as Factor and if CustServ_Calls value is no then CustServ_Calls value convert into 0 & if CustServ_Calls value is yes then CustServ_Calls value convert into 1
CustServCalls <- as.factor(churnData$VMail.Plan)
CustServCalls <- data.frame(CustServCalls)

CustServCalls[CustServCalls$CustServCalls =="no","Output"] <- 0 
CustServCalls[CustServCalls$CustServCalls =="yes","Output"] <- 1
CustServCalls = as.factor(CustServCalls$Output)

CustServCalls <- data.frame(CustServCalls)
is.factor(CustServCalls$CustServCalls)

## Combine all the traing data
features <- cbind(intlPlan, vMailPlan, CustServCalls)

################################################################################
# Problem # 4: (15 points)
#
#Use the Naïve Bayes methodology and R to develop a classification model for the churn dataset; 
#use the "Churn" variable as the target variable and only categorical variables "Int_l_Plan", 
#"VMail_Plan" and "CustServ_Calls" as the predictors.
#
################################################################################

nb <- naivebayes::naive_bayes(x = features,y = churn)
plot(nb)


################################################################################
# Problem # 5: (15 points) 
#
#Use the Random Forest methodology to develop a classification model for the churn dataset; 
#use the "Churn" variable as the target variable and only categorical "Int_l_Plan", "VMail_Plan" and 
#"CustServ_Calls" as the predictors. 
#
################################################################################

rf <- randomForest::randomForest(features, churn)
plot(rf)

randomForest::varImpPlot(rf)

#install.packages('caret', dependencies = TRUE)

#library(caret)

#Print All important variable
imp <- caret::varImp(rf)
View(imp)

varImpPlot(rf)