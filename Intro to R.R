################################################################################
# Company     : Stevens Institute of Technology
# Purpose     : 
# Project     : 
# First Name  : Harsh
# Middle Name : Jagdishbhai
# Last Name   : Kevadia
# CWID        : 10420312
################################################################################
rm(list = ls())


hello<-"Hello World!"
x<-c(1,2,2,NA,10,5)
print(x)
min(x)
max(x)
mean(x)
mode(x)
help(min)
min(x,na.rm = TRUE)
mean(x,na.rm = TRUE)
max(x,na.rm = TRUE)
summary(x)
help(ls)
example(ls)
ls()
example(rm)
rm(myfunc)
length(hello)
is.vector(hello)
is.matrix(hello)
x1<-c(10,5,6,6,6,8)
x2<-c(1,2,3,4)
typeof(x2)
mode(x1)
x3<-x1+x2
x3
help(seq)
example(seq)
seq(1, 9, by = 2)
1:12
is.integer(x2)
x4<-as.integer(x2)
x4
is.integer(x4)
x5<-c("Harsh","Kevadia")
x5
is.integer(x5)
x6<-as.integer(x5)
is.integer(x6)
x7<-c(2.5,3.5)
x8<-c(x2,x7)
x8
typeof(x8)
typeof(x2)

x9<-c(x5,x2,x8)
x9
typeof(x9)
rm(list = ls())



myfirstname<-"Harsh"
mylastname<-"Kevadia"
myname<-c(myfirstname,mylastname)
myname
rm(myfirstname)