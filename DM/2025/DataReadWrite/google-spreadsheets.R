rm(list = ls())

install.packages("googlesheets4")
library(googlesheets4)

path <- "https://docs.google.com/spreadsheets/d/1U6Cf_qEOhiR9AZqTqS3mbMF3zt2db48ZP5v3rkrAEJY/edit#gid=780868077"
gs4_deauth()

read_sheet(path, sheet = 4)
data <- gs4_example("gapminder") 

dt <- data |> 
  range_read(sheet = "Europe") |> 
  as.data.frame()

head(dt)
library(dplyr)
dt |> arrange(desc(lifeExp)) |> head()
