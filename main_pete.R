main.R

# Load all of the tasks as saved to the repository.
source("get_user_data_choice.R")
source("get_population.R")

# Get the user to choose which dataset to use.
dataset <- get_user_data_choice()
# Given their choice, set the dataset.
population <- get_population(dataset)

# Get the height and weight of the individual to show - the user or the character.
if (dataset == "starwars"){
  name <- get_character()
  # !!! get height and weight for a character from the dataset.
} else {
  height_weight < get_height_weight()
}
  