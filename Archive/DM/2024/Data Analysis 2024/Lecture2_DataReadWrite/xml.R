install.packages("XML")
library(xml2)
library(XML)
employee_data <- read_xml("data/employes.xml")
employee_data

employee_xml <- xmlParse(employee_data)
employee_xml

data <- xmlToDataFrame("data/employes.xml")
data

write_xml(data, "-----" )
