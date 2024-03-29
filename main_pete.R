# main.R
#
# PMIM102 Group project using github - Calculate BMI
#
# Main program to implement the overall analysis using all the component
# functions created by the group.
#
# Pete Arnold
# 18.10.2022/13:47

# Load some dummy functions.
library(tidyverse)
source('./test_pete.R')

# 0. A dataset or two needs to be created.
# What do we need to do here - save it as a file? Save it as a data frame?
# Group 1 have created some datasets as CSV files which we can load separately.
# !!! Get Group 1 to commit their creation code.
# create_dataset()
# Group 4 have also created a generation function which we should be able to run
# just by sourcing the creation file.
# !!! Please clear up the loose file in the project directory.
source('./Group4/G4CreateDataset.R')

# 1. Get the dataset source from the user.
# Is this enough? How do we tell if the dataset is a file or existing R dataset?
# From the extension?
# dataset_name <- get_name_of_required_data()

# 2. Locate and load the data.
# df <- load_dataset(dataset_name)
source('./Group4/getDataset.R')
# Tested with Datafile.csv.
# !!! Fix the Error in getDataset() : no loop for break/next, jumping to top level
# !!! with [1] "No file with that name exists..."
# !!! Remove the call to the function in getDataset.R
df <- getDataset()

# Verify that the data is OK, fix or highlight problems.
# !!! Group 4 could do this.

# 3. Produce a Table summary of the data.
# !!! Group 2's code?
table1 <- generate_table_1(df)
print(table1)
# flextable?

# 4. Calculate BMI.
# !!! Group 7's code?
# df <- calculate_BMI(df)
source('./Group4/calculateBMI.R')
df <- calculateBMI(df)
head(df)

# 5. Categorise BMI.
# Do we need to specify the categories?
df <- categorise_BMI(df)
head(df)

# 6. Produce a Table summary of the BMI data.
# Do we need to specify what to generate?
source('./Group3/generate_statistics.R')
table_2 <- generate_statistics(df)
print(table_2)
# Again, flextable?

# 7. Plot the BMI data (values, categories?).
# Do we need to specify what to generate?
# !!! Group 6.
# !!! Make a function and pass in the dataset. One of the advantages of using a
#     function.
source('./bmiPlot.R')

# doing analysis by showing relationship between height and weight
cor(Datafile5$height, Datafile5$weight)



  