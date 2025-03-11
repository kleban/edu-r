#install.packages("lubridate")
library(lubridate)
set.seed(123)

# випадкові дати у діапазоні
start_date <- as.Date("2025-03-01")
end_date <- as.Date("2025-03-31")

random_dates <- sample(seq(start_date, end_date, by="day"), 100, replace=TRUE)
random_dates

# додати до дати випадковим чином від 2о до 30 днів
random_days_to_add <- sample(20:30, length(random_dates), replace=TRUE)
new_dates <- random_dates + random_days_to_add

date_df <- data.frame(Start = random_dates, End = new_dates)
date_df
