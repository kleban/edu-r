rm(list = ls())

install.packages("rvest")
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

### 2
url <- "https://en.wikipedia.org/wiki/List_of_banks_in_Europe"
page <- read_html(url)
tables <- html_nodes(page, "table")
table1 <- as.data.frame(html_table(tables[1]))
table1
