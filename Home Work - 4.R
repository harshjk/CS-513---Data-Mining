################################################################################
# Company     : Stevens Institute of Technology
# Purpose     : Home Work 3
# Project     : CS 513 - Spring 2017
# First Name  : Harsh
# Middle Name : Jagdishbhai
# Last Name   : Kevadia
# CWID        : 10420312
################################################################################
rm(list = ls())

## Load the IRIS dataset
data()
data(iris)

##Read the data and:??? Store every fifth record in a "test" dataset    2)     starting with the first record

View(iris)

test <- iris[seq(from = 1, to = 150, by = 5),]

## ??? Store the rest in the "training" dataset
training <- iris[-seq(from = 1, to = 150, by = 5),]

##Use knn with k=1 and classify the test dataset
library(class)

predict <- knn(train = training[,-5],test = test[,-5],cl = training[,5],k=1)

table(predict,test[,5])

##Repeat the above steps with k=2, k=5, k=10.

## k = 2
predict <- knn(train = training[,-5],test = test[,-5],cl = training[,5],k=2)

table(predict,test[,5])


## k = 5
predict <- knn(train = training[,-5],test = test[,-5],cl = training[,5],k=5)

table(predict,test[,5])

## k = 10
predict <- knn(train = training[,-5],test = test[,-5],cl = training[,5],k=10)

table(predict,test[,5])