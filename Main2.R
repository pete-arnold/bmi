# ------------------------------------------------------------------------------
# Main (by group 2) - application
# ------------------------------------------------------------------------------
# January 2022
# Alex Jones & Jason Summers & Isinene Onoabhagbe & 
# Chidimma Maduabum & Linus K. Chirchir
# ------------------------------------------------------------------------------
# 
library(tidyverse)
library(crayon)

source("datagen.R")

df = get_realistic_data(100000)
view(df)
