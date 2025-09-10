rm(list = ls())

path <- "E:\\TMP\\Lecture2_DataReadWrite\\data\\users.csv"

data <- read.csv(path, na.strings = c("NULL", "", " ", "NA"))
data

getwd()

path <- "data\\users.csv"

data <- read.csv(path, na.strings = c("NULL", "", " ", "NA"))
data

path <- "E:/TMP/Lecture2_DataReadWrite/data/users.csv"

data <- read.csv(path, na.strings = c("NULL", "", " ", "NA"))
data

work_dir <- getwd()
file_path <- "data/users.csv"

full_path <- paste0(work_dir, "/", file_path)
data <- read.csv(full_path, na.strings = c("NULL", "", " ", "NA"))
data
