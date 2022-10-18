#-------------------------------------------------------------------------------
# Purpose: Create dummy dataset for BMI calculation and analysis
#-------------------------------------------------------------------------------
# Created by Group 4 HDS MSc, 18 October 2022
#-------------------------------------------------------------------------------

#Create a list of unique row IDs

id <- paste0("G4-", 1:1000)

# Create gender data for all rows. Gender probability is based on ONS 2021 data
# on Wales population found at https://www.ons.gov.uk

gender <- sample(c("Male", "Female"), size=1000, replace=TRUE, prob=c(.49,.51))

# Create weight and height data

height <- rnorm(1000, mean=170, sd=6)

weight <- rnorm(1000, mean=78, sd=4)

G4bmi <- data.frame(id, gender, height, weight)

write.csv(G4bmi,"G4bmi.csv", row.names = FALSE)
