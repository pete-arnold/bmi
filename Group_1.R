get_starwars_data <- function() {
  data <- starwars %>%
  select(name, height, mass, gender, homeworld)
  return(data)
}

get_starwars_data()

get_height_weight <- function () {
  height <- readline(prompt = "What is your height in cm?")
  weight <- readline(prompt = "What is your weight in kg?")
  return (c(height, weight))

}

get_height_weight()

get_character <- function() {
  character_select <- readline(prompt = "Please pick a character from Star Wars")

}
