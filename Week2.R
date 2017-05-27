rm(list = ls())
x<-1:9

cat <- c("good","good","bad","good","good","bad","good","bad","bad")
typeof(cat)

?factor()

cat2 <- factor(cat)
cat2

#change the order
cat3 <- factor(cat,levels = (c("good","bad")))
cat3

catNumber<- as.numeric(cat3)

days <- c("Monday","Sunday","Tuesday","Wednesday","Thursday","Saturday")

days_factor <- factor(days,levels = (c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")))

mode(days)
typeof(days)

is.factor(days)
is.factor(days_factor)
DaysNumber <- as.numeric(days)
DayNumber <- as.numeric(days_factor)


#MATRIX:::::::::::::::::::::::
x <- 1:9
is.matrix(x)

?matrix()

matrix1 <- matrix(x,nrow = 3, ncol = 3, byrow = FALSE)
is.matrix(matrix1)
matrix1

colnames(matrix1) <- c("col1","col2","col3")
rownames(matrix1) <- c("row1","row2","row3")
matrix1

matrix2 <- matrix(c(2,0,1,4), nrow = 2, ncol = 2, byrow = FALSE)
is.matrix(matrix2)

colnames(matrix2) <- c("c1","c2")
rownames(matrix2) <- c("r1","r2")

matrix2

# Error Occure

matrixAdd <- matrix1 + matrix2

matrix3 <- matrix(11:19, nrow = 3, ncol = 3, byrow = TRUE)
matrix3

matrixAdd_3 <- matrix1 + matrix3

matrix1
matrix3
matrixAdd_3

# NOT MATRIX MULTIPLICATION

matrixMulti_3 <- matrix1 * matrix3
matrix1
matrix3
matrixMulti_3


# MATRIX MULTIPLICATION

matrixRealMulti_3 <- matrix1 %*% matrix3
matrix1
matrix3
matrixRealMulti_3

# Transpose
matrixTranspose <- t(matrix1)
matrixTranspose

# DO YOUR SELF - solve()

#list

my.lst <- list(2017, c("Harsh","Jagdishbhai","Kevadia"),c(12.4,12,654,232.55,2))
my.lst
my.lst <- list(stud.id = 2017, stud.name = c("Harsh","Jagdishbhai","Kevadia"), stud.grad = c(12.4,12,654,232.55,2))
is.list(my.lst)
mode(my.lst)
typeof(my.lst)
length(my.lst)

my.lst2 <- list(seq = 1:10, my.lst)



#Data Frame

my.dataset <- data.frame(site = c('A','B','C','D','E'), ph = c(1.2,2.4,4.5,3.8,5.9))
is.list(my.dataset)
is.data.frame(my.dataset)
is.matrix(my.dataset)
typeof(my.dataset)



data()
data(iris)
View(iris)
length(iris)
nrow(iris)


## READ CSV files into R - Everything forward slash
dsn <- read.csv("http://www.math.smith.edu/sasr/datasets/help.csv",colClasses = c("id" = "character"))
View(dsn)

?write.csv()
write.csv(dsn,"D:/dsn.csv")