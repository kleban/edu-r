#install.packages("openxlsx")
library(openxlsx)

data <- read.xlsx("data/telecom_users.xlsx", sheet = 1, colNames = TRUE)

data <- data[, 1:3]
data

write.xlsx(data, file = "data/final_telecom_data.xlsx", overwrite = T)
