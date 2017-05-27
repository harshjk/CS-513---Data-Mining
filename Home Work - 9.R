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

## Load the dataset
dataFile <- read.csv("C:/Users/Harsh Kevadia/Downloads/wisc_bc_data.csv")
rawData <- dataFile[-1]
diagnosis <- as.factor(rawData$diagnosis)
diagnosis <- data.frame(diagnosis)
rawData <- cbind(data.frame(diagnosis), rawData[-1])



collumnNames <- names(rawData)

rawData[rawData$diagnosis=="M","Output"]<- 1 
rawData[rawData$diagnosis=="B","Output"]<- 0 

nnFormula <- as.formula(paste("Output~", paste(collumnNames[!collumnNames %in% "diagnosis"], collapse = " + ")))

##9.1 Implement a neural network model, with 10 hidden nodes, to classify the cells in the "Wisconsin breast cancer" (wisc_bc_data.csv) dataset into malignant and benign.

nn <- neuralnet::neuralnet(nnFormula,data = rawData, hidden = 10, err.fct="ce", linear.output=FALSE, likelihood=TRUE)
plot(nn)

#9.2 - 2- Use SOM to cluster the cells in "Wisconsin breast cancer" (wisc_bc_data.csv)    into two clusters. Do not use the diagnosis column as part of your cluster analysis. Compare the clusters with diagnosis.
lrawData <- rawData[,2:13]
gr <- class::somgrid(topo = "hexagonal")
rawData.som <- class::SOM(lrawData, gr)
plot(rawData.som)

## 2-phase training
rawData.som2 <- class::SOM(lrawData, gr,
                  alpha = list(seq(0.05, 0, len = 1e4), seq(0.02, 0, len = 1e5)),
                  radii = list(seq(8, 1, len = 1e4), seq(4, 1, len = 1e5)))
plot(rawData.som2)