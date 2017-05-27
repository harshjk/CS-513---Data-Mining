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


## READ CSV files into R - Everything forward slash
dsn <- read.csv("http://www.math.smith.edu/sasr/datasets/help.csv",colClasses = c("id" = "character"))
View(dsn)

dataFrame <- data.frame(dsn["id"],dsn["pcs1"],dsn["mcs1"],dsn["substance"],dsn["racegrp"])

##Calculate: Mean, Max, STD, Max, Min of mcs1
mcseData <- dataFrame[3]

meanMCS1 <- as.numeric(colMeans(mcseData, na.rm = TRUE))
maxMCS1 <- max(mcseData, na.rm = TRUE)
minMCS1 <- min(mcseData, na.rm = TRUE)

stdMCS1 <- as.numeric(apply(mcseData,2,FUN = sd, na.rm = TRUE))

##Create a frequency  table of substance vs. racegroup

freq = data.frame ( table ( dsn$substance, dsn$racegrp)[,])

## Substitute the missing values of mcs1 by the overall average
dsn$mcs1 <- replace(dsn$mcs1,is.na(dsn$mcs1),meanMCS1)