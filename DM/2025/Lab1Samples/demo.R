library(lubridate)
set.seed(123)

client_info <- data.frame(
  client_id = 1:5,
  client_name = paste("Client", 1:5),
  industry = sample(c("E-commerce", "B2B", "Retail", "Technology", "Healthcare"), 5, replace = TRUE),
  target_audience = sample(c("Youth", "Adults", "Seniors", "Business"), 5, replace = TRUE),
  region = sample(c("North", "South", "East", "West", "Global"), 5, replace = TRUE)
)

campaigns <- data.frame(
  campaign_id = 1:10,
  campaign_name = paste("Campaign", 1:10),
  client_id = sample(client_info$client_id, 10, replace = TRUE),
  start_date = sample(seq(Sys.Date() - 180, Sys.Date() - 30, by = "days"), 10),  
  end_date = NA,  
  budget = sample(1000:50000, 10, replace = TRUE),
  platform = sample(c("Facebook", "Instagram", "Google Ads", "LinkedIn"), 10, replace = TRUE)
)
campaigns$end_date <- campaigns$start_date + sample(1:30, 10, replace = TRUE)

ad_performance <- data.frame(
  performance_id = 1:50,  
  campaign_id = sample(campaigns$campaign_id, 50, replace = TRUE),
  impressions = sample(100:10000, 50, replace = TRUE),  
  clicks = sample(1:500, 50, replace = TRUE),  
  spend = runif(50, 10, 1000),  
  conversions = sample(0:50, 50, replace = TRUE)
)

ad_performance <- merge(ad_performance, campaigns[, c("campaign_id", "start_date", "end_date")], by = "campaign_id")
ad_performance$date <- as.Date(sapply(1:nrow(ad_performance), function(i) {
  sample(seq(ad_performance$start_date[i], ad_performance$end_date[i], by = "day"), 1)
}))

ad_performance <- ad_performance[, !(names(ad_performance) %in% c("start_date", "end_date"))]


ad_performance$clicks <- ifelse(ad_performance$clicks > ad_Performance$impressions,
                                ad_performance$impressions,
                                ad_performance$clicks)


ad_Performance$conversions <- ifelse(ad_Performance$conversions > ad_Performance$clicks,
                                     ad_Performance$clicks,
                                     ad_Performance$conversions)


merged_data1 <- merge(campaigns, client_info, by = "client_id")
merged_data2 <- merge(merged_data1, ad_performance, by = "campaign_id")
merged_data2

max_date <- max(merged_data2$date)
max_date

filtered_data <- merged_data2[
  merged_data2$date >= max_date - 30 &
    merged_data2$date <= max_date,]
filtered_data

filtered_data[, c(4,5,17)]



aggregate(clicks~platform, data = filtered_data, sum)
aggregate(spend~platform, data = filtered_data, sum)
