#source("get_starwars_data.R")
#source("get_realistic_data.R")
library(crayon)
get_population <- function(name){
  if (name=="starwars"){
    return(get_starwars_data())
  } else if (name=="realistic"){
    return(get_realistic_data())
  } else {
    cat(bgRed("There is no dataset called", name, ".\n"))
  }
}

# # Test
# library(tidyverse)
# get_starwars_data <- function(){
#   cat(bgGreen("starwars\n"))
#   return(starwars)
# }
# 
# get_realistic_data <- function(){
#   cat(bgGreen("realistic\n"))
#   return(starwars)
# }
# get_population("realistic")
# get_population("starwars")
# get_population("rubbish")
