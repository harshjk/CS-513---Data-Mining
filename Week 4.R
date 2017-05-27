rm(list=ls())

## Function
mmnorm <- function(x,minx,maxx){
  z <- ((x - minx) / (maxx - minx))
  return(z)
}

myvector <- 1:20
mmnorm(myvector,1,20)

minx <- 25
maxx <- 10

mmnorm2 <- function(x){
  minx <- 0
  z <- ((x - minx) / (maxx - minx))
  z <- list(z,minx,maxx)
  return(z)
}
results <- mmnorm2(myvector)


mmnorm3 <- function(x){
  z <- ((x - min(x)) / (max(x) - min(x)))
  return(z)
}

mmnorm3(myvector)


f_print <- function(x1,x2,x3,x4,x5){
  print(c('Value of x1 ',x1))
  print(c('Value of x2 ',x2))
  print(c('Value of x3 ',x3))
  print(c('Value of x4 ',x4))
  print(c('Value of x5 ',x5))
}

f_print(10,5,3,2,1)
f_print(x2=10,x5=5,3,2,1)