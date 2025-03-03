v1 <- c(10, 4.5, 11, 7, -4)
v2 <- c(T, F, F, F, T, T, F)
v3 <- c("1", "text", "Hello")

v4 <- 3:7
v5 <- sample(10)
v5

v6 <- c(1, 0, v1, 9, v4, v5)
v6

c <- c(1, 4, 5, 6, 2, 2, 3, 4, 1, 2, 5, 6, 9)
c
mean(c)
median(c)

summary(v6)

#####
v1 <- c(10, 4.5, 11, 7, -4)
v1 * 2
v1 ^ 2
sqrt(v1)

v1 <- c(10, 4.5, 11, 7, 4.5, 7, NA, -4)
v2 <- c(-3,6, 7)
v1 + v2

sum(v1, na.rm = T)
mean(v1, na.rm = T)
min(v1, na.rm = T)
max(v1, na.rm = T)

length(v1)
unique(v1)

vx1 <- c(2,3,4)
vx2 <- c(1,2,4,5)

intersect(vx1, vx2)
union(vx1, vx2)

##########################

vtr <- c(1, -2, NA, NaN, Inf, 1223, -Inf, NA, 21) 
vtr

is.na(vtr)
is.nan(vtr)
is.infinite(vtr)
is.finite(vtr)

vtr[is.na(vtr)] <- 1000
vtr
vtr[is.infinite(vtr)] <- 0
vtr
