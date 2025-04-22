library(jsonlite)

api_key <- ""
url <- "https://openexchangerates.org/api/latest.json?app_id="
data <- fromJSON(url)
rates <- as.data.frame(data$rates)
rates[,"UAH"]
