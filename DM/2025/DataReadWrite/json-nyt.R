library(jsonlite)

api_key <- ""
url <- paste0("https://api.nytimes.com/svc/search/v2/articlesearch.json?q=f16+ukraine&api-key=", api_key)
url

req <- fromJSON(url)
articles <- req$response$docs
colnames(articles)
articles$keywords[1]
