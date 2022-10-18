# Data generator
# Tina, Souyma, Swati

choice <- readline(prompt="Would you like an ideal dataset (I), real data (R) or Star Wars data (S): ")

cat("You have chosen ",choice)

n <- readline(prompt="How many items do you want in the dataset? ")

cat("You have chosen ",n, "data items in your dataset.")

#Ideal data

#If (choice == "I") {
n <- 10000
  id <- seq(1000, 1000 + n - 1, 1)
  mean_weight <- 70
  mean_height <- 175
  sd_weight <- 14
  sd_height <- 33
  weight_kg <- as.integer(rnorm(n, mean= mean_weight, sd=sd_weight))
  height_cm <- as.integer(rnorm(n, mean= mean_height, sd=sd_height))
  dataset <- data.frame(id=id, weight=weight_kg, height=height_cm)

#else (if choice == "S") {

  library(tidyverse)

  name <- select(starwars,name=name)
  weight<- select(starwars,mass=mass)
  height <- select(starwars,height=height)
  gender <- select(starwars,gender=gender)
  planet <- select(starwars,homeworld=homeworld)

  dataset <- data.frame(name=name,weight=weight,height=height,gender=gender,planet=planet)
 print(dataset)

#}


write.csv(dataset,"Datafile2.csv", row.names = FALSE)

print(dataset)
