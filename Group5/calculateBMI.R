calculateBMI <- function(dataset) {
  w_kg <- dataset$weight
  h_cm <- dataset$height
  error <- NA
  b <- w_kg / ((h_cm / 100) ^ 2)
  if (any(w_kg < 2 | w_kg > 650 | h_cm < 50 | h_cm > 280)) {
    error <- "bmi: inputs out of reasonable range."
  } else if (any(b < 15 | b > 40)) {
    error <- "bmi: output out of expected range."
  }
  if (!is.na(error)) print(error)
  b[which(w_kg < 2 | (w_kg > 650 | h_cm < 50 | h_cm > 280))] <- NA
  b[which(b < 15 | b > 40)] <- NA
  bmiDataset <- dataset %>% mutate(BMI=b)
  return(bmiDataset)
}
