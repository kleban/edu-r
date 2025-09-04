# NYT api
library(jsonlite)
article_key <- ""
url <- "http://api.nytimes.com/svc/search/v2/articlesearch.json?q=trump+ukraine"
req <- fromJSON(paste0(url, article_key))
articles <- req$response$docs
colnames(articles)

articles$print_section

# Weather api
# https://www.visualcrossing.com/account/
  
w_key = ""
url <- "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/Ostroh?unitGroup=us&key=&contentType=json"
req <- fromJSON(url)
View(req$days)

# https://openexchangerates.org/account
