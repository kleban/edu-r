if(condition == TRUE) {
  ## run if TRUE
} 

if(condition == TRUE) {
  ## run if TRUE
} else {
  ## run if FALSE
}

if(condition == TRUE) {
  ## run if TRUE
} else if (condition2) {
  ## run if FALSE
} else {
  
}


## task 1. find max number

a <- sample(1:10, 1)
b <- sample(1:10, 1)
c <- sample(1:10, 1)

max <- 0

if(a > b) {
  
  if(a > c) {
    max <- a
  } else {
    max <- c
  }
  
} else {
  if(b > c) { 
    max <- b
  } else {
    max <- c
  }
}

max

max(a,b,c)

## ifelse(condition, TRUE, FALSE)

x <- sample(-10:10, 10)
y <- ifelse(x > 0, 1, 0)
y

x <- c("Yes", "No", "Yes", "No", "No")
y <- ifelse(x == "Yes", 1, 0)
y

## task

a <- readline(prompt = "Введіть число: ")
a <- as.numeric(a)

if(a == 0) {
  cat("Число дорівнює нулю.")
} else if(a %% 2 == 0) {
  cat("Число парне")
} else {
  cat("Число непарне")
}



