rm(list = ls())

#install.packages("rvest")
library(rvest)
url <- "https://en.wikipedia.org/wiki/List_of_largest_banks"

page <- read_html(url)
page

tables <- html_nodes(page, "table")
tables

table1 <- as.data.frame(html_table(tables[1]))
table1
table2 <- as.data.frame(html_table(tables[2]))
table2
table3 <- as.data.frame(html_table(tables[3]))
table3
str(table1)

# Top Brands
# https://brandirectory.com/reports/global
install.packages("RSelenium")
library(RSelenium)
remDr <- rsDriver(browser='chrome', port=4444L)
brow <- remDr[["client"]]
brow$open()
brow$navigate("https://brandirectory.com/reports/global")
h <- brow$getPageSource()
h <- read_html(h[[1]])
h %>% html_nodes(".Kinotoppen_MovieTitle__2MFbT") %>% 
  html_text()
url <- "https://brandirectory.com/reports/global"
page <- read_html(url)
page

tables <- html_nodes(page, "table")
tables
