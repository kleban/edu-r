
data <- data.frame(Id = c(1000:1005),
                   Name = c("Name1", "Name2", "Name11", "Name22", "Name13", "Name23"),
                   Salary = sample(1000:10000, 6))
data

write.csv(data, "data/users.csv", row.names = F)

data <- read.csv("data/users.csv", na.strings = c("NULL", "", " ", "NA"))
data

# install.packages("readr")

library(readr)
data <- read_csv("data/telecom_users.csv", )
data$...1 <- NULL

str(data)

anyNA(data)
