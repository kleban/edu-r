data <- data.frame(Name = c("Laptop Macbook Air", "Avocado", "Tesla ModelS"),
                   Low = c(300, 1.5, 25000),
                   High = c(1200, 5.2, 55000))
data

prods <- data.frame(
  Product = sample(data$Name, size = 10, replace = T),
  Price = 0)

prods 

for(n in 1:nrow(data)) {
  
  prods[prods$Product == data[n, "Name"], ]$Price <- 
    round(runif(nrow(prods[prods$Product == data[n, "Name"],]), min = data[n,"Low"], max = data[n,"High"]), 2)
}
prods
