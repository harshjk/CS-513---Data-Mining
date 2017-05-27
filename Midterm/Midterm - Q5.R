################################################################################
# Company     : Stevens Institute of Technology
# Purpose     : Mid-Term Question 5
# Project     : CS 513 - Spring 2017
# First Name  : Harsh
# Middle Name : Jagdishbhai
# Last Name   : Kevadia
# CWID        : 10420312
################################################################################
rm(list = ls())


vec <- c(45,48,6,NA,49,63,81,56,21,75,25,48,56,24,73,82,62,NA,86,88)

#Use R to find maximum, minimum, median, mean and the standard deviation of the follow 20 numbers.
maximum <- max(vec,na.rm = TRUE)
minimum <- min(vec,na.rm = TRUE)
med <- median(vec,na.rm = TRUE)
menn <- mean(vec, na.rm = TRUE)
std <- sd(vec,na.rm = TRUE)

#Replace the missing values with the median of the distribution
newVec <- replace(vec,is.na(vec),med)

#Store the 3rd to 8th elements of the new vector above into a new vector
newNewVec <- newVec[seq(3,8,by = 1)]
