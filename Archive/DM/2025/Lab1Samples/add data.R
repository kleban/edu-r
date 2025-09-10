agents <- data.frame(
  agent_id = 201:205,
  name = c("Anna", "Diana", "Vlad", "Yulia", "Roman"),
  experience_years = sample(1:3, size = 5, replace = T),
  department  = sample(c("Tech", "Billing", "Sales"), size = 5, replace = T))
agents

data <- data.frame(id = 1:10,
                   user = sample(agents$name, size = 10, replace = T),
                   department = NA)

for(n in 1:nrow(agents)) {
  data[data$user == agents[n, "name"],]$department <- agents[n, "department"]
}
data
