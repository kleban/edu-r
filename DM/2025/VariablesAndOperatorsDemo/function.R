x <- c(4,6,3,2,5)
max(x)

my_func <- function() {
  print("Print my text")
}

my_func()

#######
uah_to_usd <- function(uah) {
  usd_rate <- 41.6
  usd_amount <- uah / usd_rate
  return(usd_amount)
}

a <- uah_to_usd(100)
a1 <- uah_to_usd(1000)

uah_to_usd <- function(uah, usd_rate) {
  usd_amount <- uah / usd_rate
  return(usd_amount)
}
print(uah_to_usd(100, 41.6))

