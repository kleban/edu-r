# Weather api
# https://www.visualcrossing.com/account/

url <- "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/Ostroh?unitGroup=us&key=&contentType=json"
req <- fromJSON(url)
View(req$days)
