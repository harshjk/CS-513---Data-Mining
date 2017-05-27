rm(list = ls())

avector <- c("A","B","C","D")

second <- avector[2]

names(avector) <- c("first","second","thrid","forth")
avector
avector[2] <- "E"
avector["second"]


my.lst <- list(34453,c("Harsh","Kevadia"),c(14.3,12,15,19))
my.lst[c(2,3)]
my.lst[2]
my.lst[1:3]

elements23 <- my.lst[c(2,3)]
is.list(elements23)
is.vector(elements23)

firstName <- my.lst[[2]][1]
lastName <- my.lst[[2]][2]
firstName[2]


is.vector(my.lst[2])

is.vector(my.lst[c(2,3)])

is.list(my.lst[2])
is.vector(my.lst)

element2 <- my.lst[2]

rm(list = ls())

data()
data(iris)
View(iris)
iris[2,3]
iris[1:20,c(3,4)]
iris[1:20,1:5]
iris[10:30,1:4]
iris[10:30,-5]
iris[10:30,-c(1,5)]

iris[seq(from = 0, to = 150, by = 5),]
?seq
?nrow
nrow(iris)
ncol(iris)

iris[seq(from = 0, to = nrow(iris), by = 5),]
iris[-(seq(from = 0, to = nrow(iris), by = 5)),]


training <- iris[-(seq(from = 0, to = nrow(iris), by = 5)),]
test <- iris[seq(from = 0, to = nrow(iris), by = 5),]
