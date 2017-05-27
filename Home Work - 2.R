################################################################################
# Company     : Stevens Institute of Technology
# Purpose     : Home Work 2
# Project     : CS 513 - Spring 2017
# First Name  : Harsh
# Middle Name : Jagdishbhai
# Last Name   : Kevadia
# CWID        : 10420312
################################################################################
rm(list = ls())

## 2.1 - Create the following x and y vectors:
x <- c(1,2,3)
y <- c(11,12,13,14,15,16)

## 2.2 - Calculate and display z=x+y.
Z <- x + y

## 2.3 - z = (12 14 16 15 17 19) - It add x and y, x has only 3 value, while y has 6 value so that, 
## it creats cycle addition 1+11, 12+2,13+3,14+1,15+2,16+3

## 2.4 - Create a vector of your last name.
lastName <- "Kevadia"

## 2.5 - Create a vector of your first name.
firstName <- "Harsh"

## 2.6 - Create a vector of your student ID.
studentID <- "10420312"

## 2.7 - What are the length and data type of the "last name" vector? Why?
len <- length(lastName)
lenType <- typeof(lastName)
lastNameType <- mode(lastName)

## EXPLAIN: "Last Name" vector lenght is 1 because it only contains one element in vector
## Data Type of "Last Name" is Character

## 2.8 - Combine your first name, last name and student id into a single vector ("myinfo").
myInfo <- c(firstName,lastName,studentID)
  
## 2.9 - Display "myinfo" in the Console.
myInfo
  
## 2.10 - What are the length and data type of "myinfo"?
myInfoLen <- length(myInfo)
myInfoType <- mode(myInfo)

## 2.11 - Remove the "first_name" object.
rm(firstName)

## 2.12 - Display "myinfo" in the Console again.
myInfo

## 2.13 - Create a dataframe "roster" using the following table:
roster <- data.frame(First = c("fname1","fname2"),Last = c("lname1","lname2"), ID = c(1111,2222))

## 2.14 - View the "roster".
View(roster)

## 2.15 - Export the data frame "roster" to a csv file.
write.csv(roster,"D:/roster.csv")

## 2.16 - Import and view the following csv file: http://www.math.smith.edu/sasr/datasets/help.csv
dsn <- read.csv("http://www.math.smith.edu/sasr/datasets/help.csv",colClasses = c("id" = "character"))
View(dsn)

## 2.17 - Remove all the objects in your session.
rm(list = ls())