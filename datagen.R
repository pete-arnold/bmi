# ------------------------------------------------------------------------------
# Data generation - application
# ------------------------------------------------------------------------------
# January 2022
# Alex Jones & Jason Summers
# ------------------------------------------------------------------------------
# We'll be using the tidyverse library for this work for its readability. You
# could use base-R for many of these operations.



#### -------------------------------------------
### Generation of data
### --------------------------------------------
library(tidyverse)
library(crayon)

DATA_SIZE <- 10000000

df_gen <- data.frame(
  ID = 1:DATA_SIZE,
  gender = sample(0:1, size=DATA_SIZE, replace=TRUE),
  weight = sample(40:200, size=DATA_SIZE, replace=TRUE),
  height = sample(50:270, size=DATA_SIZE, replace=TRUE),
  age = sample(17:100, size=DATA_SIZE, replace=TRUE)
  )

head(df_gen)
tail(df_gen)

#### BMI calculation function
### maybe add some checks to verify is a number
bmi <- function(w_kg, h_cm) {
  # Check and report errors with any of the input values.
  error <- NA
  b <- w_kg / ((h_cm / 100) ^ 2)
  if (any(w_kg < 2 | w_kg > 650 | h_cm < 50 | h_cm > 280)) {
    error <- "bmi: inputs out of reasonable range."
  } else if (any(b < 15 | b > 40)) {
    error <- "bmi: output out of expected range."
  }
  if (!is.na(error)) print(error)
  # We could also remove these bad data.
  b[which(w_kg < 2 | w_kg > 650 | h_cm < 50 | h_cm > 280)] <- NA
  b[which(b < 15 | b > 40)] <- NA
  # Return the data
  return (b)
}


##### user entry of their own weight, height, age, gender

user_bmi_entry <- function(user) {
  cat("Hello", user, '\n', sep=' ')
  print("enter your values as needs be to calculate your bmi against average, -1 to cancel")
    w_kg <- readline(prompt="enter your weight in kg: ")
    w_kg <- as.numeric(w_kg)
    if (is.na(w_kg)){
      stop("That weight was not a number!\n")
    } else if (w_kg == -1) {
      break
    }

    h_cm <- readline(prompt="enter a height in cm: ")
    h_cm <- as.numeric(h_cm)
    if (is.na(h_cm)){
      stop("That height was not a number!\n")
    } else if (h_cm == -1) {
      break
    }
    print(bmi(w_kg, h_cm))

    #return weight, height, gender, age
}

username <- readline(prompt="enter your name: ")
bmi_of_user <- user_bmi_entry(username)


### function to add user to the generated dataset

df_gen <- df_gen %>%
  add_row(ID = nrow(df_gen) + 1,
          gender = #give gender from tuple,
          weight = # as above,
          height = # as above,
          age = # as above,
            )


### Visualise!
