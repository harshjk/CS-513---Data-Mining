x <- c(7,10,13,2,3,4,5,6,7,8)
y <- c(46,57,58,59,90,98,97,96,95,94)

xy <- cbind(x,y)

?dist()

dxy <- dist(xy)
class(dxy)

?hclust()

hxy <- hclust(dxy)
plot(hxy)

?kmeans()
clxy <- kmeans(xy,2)