gender <- c("male", "female", "female", "male", "female", "female")
gender
class(gender)

gender_factor <- factor(gender)
gender_factor

as.numeric(gender)
as.numeric(gender_factor)

#####################
gender <- c("male", "female", "female", "male", "other", "female", "female")
gender_factor <- factor(gender, levels = c("male", "female", "other"))
gender_factor
as.numeric(gender_factor)

####################
cities <- c("Rivne", "Ostroh", "Zdolbuniv", "Dubno", "Sarny")
cities_as_factors <- factor(cities)
as.numeric(cities_as_factors)
