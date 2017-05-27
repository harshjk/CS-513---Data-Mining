################################################################################
# Company     : Stevens Institute of Technology
# Purpose     : Home Work 7
# Project     : CS 513 - Spring 2017
# First Name  : Harsh
# Middle Name : Jagdishbhai
# Last Name   : Kevadia
# CWID        : 10420312
################################################################################
rm(list = ls())

## Load the dataset
dataFile <- read.csv("C:/Users/Harsh Kevadia/Downloads/breast-cancer-wisconsin_cat_data.csv")

##7.1 Use the Naïve Bayes methodology to develop a classification model for the Diagnosis.

features <- dataFile[-11][-1]
labels <- dataFile[,11]
nb <- naivebayes::naive_bayes(x = features,y = as.factor(labels))
plot(nb)

##7.2 Use the Random Forest methodology to develop a classification model for the Diagnosis. What are the top three important features?

rf <- randomForest::randomForest(features, as.factor(labels))
plot(rf)

randomForest::varImpPlot(rf)

#install.packages('caret', dependencies = TRUE)

library(caret)

#Print All impo
imp <- caret::varImp(rf)
varImpPlot(rf)

## Print All Feature Importance
imp[order(imp$Overall, decreasing = TRUE), ,drop = FALSE]
## Print Major 3 Feature Importance
head(imp[order(imp$Overall, decreasing = TRUE), ,drop = FALSE],n = 3)