rm(list = ls())

#install.packages("gtrendsR")
#installed.packages("ggplot2")
library(gtrendsR)
library(ggplot2)

keywords <- c("Trump", "Bitcoin")
#https://support.google.com/business/answer/6270107?hl=en
country <- "UA"
time <- ("2025-01-01 2025-03-01")
channel <- "web" #("news", "images", "video")

trends <- gtrends(keywords)

trends <- gtrends(keyword = keywords,
                  gprop = channel,
                  geo = country,
                  time = time,
                  tz = "UTC")

trend <- trends$interest_over_time
head(trend, n = 10)

plot <- ggplot(data = trend, aes(x = date, y = hits, group = keyword, col = keyword)) +
  geom_line() +
  xlab('Date') +
  ylab('Interest') +
  theme(legend.title = element_blank(), legend.position = "bottom", legend.text = element_text(size=15)) +
  ggtitle("Google Trends for Ukraine Tump+Bitcoin")

plot
