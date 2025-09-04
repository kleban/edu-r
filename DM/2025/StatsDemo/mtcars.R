?mtcars

head(mtcars)
head(mtcars, n = 10)
tail(mtcars)
tail(mtcars, 10)

names(mtcars)
dim(mtcars)
ncol(mtcars)
nrow(mtcars)

str(mtcars)

summary(mtcars)

install.packages("psych")
library(psych)

describe(mtcars)

describe(
  mtcars, 
  fast = TRUE, 
  quant = c(0.25, 0.50, 0.75), 
  ranges = FALSE, 
)

describe(
  mtcars ~ cyl, 
  fast = TRUE, 
  quant = c(0.25, 0.50, 0.75), 
  ranges = FALSE, 
)
