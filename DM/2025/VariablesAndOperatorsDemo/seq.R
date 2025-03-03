rm(list = ls())

seq1 <- 1:4
seq1

seq1 <- 10:4
seq1

1:10

seq(1, 10)

s <- seq(1, 10, by = 0.25)
s^2

seq(1, 10, length = 25)

rep(1:7, times = 20)

rep(seq(1,4, length = 5), times = 20)

rep(1:7, times = 3, each = 2)

# random
runif(5)

runif(10, min = 10, max = 20)

x <- runif(1000)
plot(x)

sample(1:10, size = 100, replace = T)

x <- sample(0:1, size = 100, replace = T, prob = c(80, 20))
hist(x, breaks = 2)

####################
x <- runif(10, min = -5, max = 5)
x

log(x)
exp(x)
sqrt(x)
factorial(5)
abs(x)

x <- runif(1000)
x <- round(x, 1)
plot(x)
