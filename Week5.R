x <- c("a","b","c","d")
for(i in 1:4){
  print(x[i])
}

j <- 0
for(i in x){
  j <- j+1
  print(x[i])
}
