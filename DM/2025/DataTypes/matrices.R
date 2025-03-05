matrix(1:10, byrow = T, nrow = 2)

sales1 <- c(44,22,66)
sales2 <- c(23,67,32)

sales <- c(sales1, sales2)
m <- matrix(sales, byrow = T, nrow = 2)
m

colnames(m) <- c("Mon", "Tue", "Wed")
rownames(m) <- c("Product1", "Product2")
m

#cbind
#rbind

m1 <- matrix(c(32,45,67,23), byrow = T, nrow = 2)
m1
colnames(m1) <- c("Thu", 'Fri')
m1

m <- cbind(m, m1)
m

m2 <- matrix(sample(10:100, 5), byrow = T, nrow = 1)
rownames(m2) <- c("Product3")
m2
m <- rbind(m, m2)
m

m[10]
m[2,1]

m[c(1,3), c(2,3)]
m[, 2:4]

m[-2,c(-3,-4)]

nrow(m)
ncol(m)

dim(m)

m[nrow(m)-1,]

m[,ncol(m)]
