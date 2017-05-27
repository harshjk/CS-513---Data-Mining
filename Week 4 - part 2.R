mmnorm <- function(x,minx,maxx){
  z <- ((x - minx) / (maxx - minx))
  return(z)
}
mmnorm(5,0,10)
myvector <- 1:10
mmnorm(myvector,min(myvector),max(myvector))

installed.packages()
install.packages("ggplot2")

library(class)
?knn()

data()
data(iris)
View(iris)

?sample()
range_1_100 <- 1:100
sampl80 <- sample(range_1_100,80)
sampl50 <- sample(200,50)


idx <- sample(nrow(iris),as.integer(.70*nrow(iris)))
training <- iris[idx,]
test <- iris[-idx,]

predict <- knn(train = training[,-5],test = test[,-5],cl = training[,5],k=3)

table(predict,test[,5])
