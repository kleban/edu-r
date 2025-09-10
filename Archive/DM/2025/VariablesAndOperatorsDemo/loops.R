
array <- c(4, 6, 2, 2, 3, 1, 2, 8, 7)
parni <- 0
neparni <- 0

for (a in array) { 
  
  if(a %% 2 == 0) {
    parni <- parni + 1
  } else {
    neparni <- neparni + 1
  }
  
}

cat("Parni: ", parni)
cat("neparni", neparni)
