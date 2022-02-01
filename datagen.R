# ------------------------------------------------------------------------------
# Data generation - application
# ------------------------------------------------------------------------------
# January 2022
# Alex Jones & Jason Summers & Isinene Onoabhagbe & 
# Chidimma Maduabum & Linus K. Chirchir
# ------------------------------------------------------------------------------
# We'll be using the tidyverse library for this work for its readability. You
# could use base-R for many of these operations.



#### -------------------------------------------
### Generation of data
### --------------------------------------------
library(tidyverse)
library(crayon)


get_realistic_data = function(DATA_SIZE) {
  df_gen <- data.frame(
    ID = 1:DATA_SIZE,
    gender = sample(0:1, size=DATA_SIZE, replace=TRUE),
    weight = sample(40:200, size=DATA_SIZE, replace=TRUE),
    height = rnorm(DATA_SIZE,170,7),
    age = sample(17:100, size=DATA_SIZE, replace=TRUE)
  )
  return (df_gen)
}
