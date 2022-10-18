#Group 3 generating bmi statistics
generate_statistics <- function(df) {
  
  
  #pass in array of all BMIs
  avgBMI <- mean(df$BMI) 
  #pass in array of all male BMIs
  avgMBMI <- mean(df$BMI[df$gender=="Male"])
  #pass in array of all female BMIs
  avgFBMI <- mean(df$BMI[df$gender=="Female"])
  
  #use values to output to user... etc
  
  cat("There are ", length(df), " people in this data.",
      "\nTheir average BMI is: ", avgBMI, 
      "\nThe average BMI for women is: ", avgFBMI,
      "\nThe average BMI for men is: ", avgMBMI)  
}