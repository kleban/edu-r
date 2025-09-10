library(dlookr)
library(dplyr)

data <- flights

data |> eda_web_report()

logo <- file.path(system.file(package = "dlookr"), "report", "R_logo_html.svg")
eda_web_report(heartfailure2, logo_img = logo, title_color = "black",
               output_file = "EDA.html")

logo <- file.path(system.file(package = "dlookr"), "report", "R_logo_html.svg")
data |> eda_web_report(logo_img = logo, 
                       title_color = "black",
                       #target = "death_event",
                       output_dir = ".",
                       author = "Yurii Kleban",
                       output_file = "EDA_flights.html", 
                       theme = "blue", browse = FALSE)

heartfailure %>%
  transformation_web_report(target = "death_event", subtitle = "heartfailure",
                            output_dir = ".", output_file = "transformation.html", 
                            theme = "blue")

data |> transformation_web_report(logo_img = logo, 
                       title_color = "black",
                       method = "pmm",
                       #target = "death_event",
                       output_dir = ".",
                       author = "Yurii Kleban",
                       output_file = "EDA_tr_flights.html", 
                       theme = "blue", browse = FALSE)
