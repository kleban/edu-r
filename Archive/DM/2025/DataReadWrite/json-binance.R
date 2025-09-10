# install.packages("jsonlite")
library(jsonlite)

market = 'BTCUSDT'
interval = '1M'
limit = 1000

url <- paste0(url = "https://api.binance.com/api/v3/klines?symbol=", market ,"&interval=", interval,"&limit=", limit)
print(url)

data <- fromJSON(url)
data <- data[, 1:7]
head(data)

str(data)
data <- as.data.frame(data)
head(data)
colnames(data) <- c("Open_time", "Open", "High", "Low", "Close", "Volume", "Close_time")
head(data)

data <- as.data.frame(sapply(data, as.numeric)) # convert all columns to numeric
head(data)

data$Open_time <- as.POSIXct(data$Open_time/1e3, origin = '1970-01-01')
data$Close_time <- as.POSIXct(data$Close_time/1e3, origin = '1970-01-01')

head(data) 
tail(data)

plot(data$Close)

library(openxlsx)
write.xlsx(data, "data/btc.xlsx")
