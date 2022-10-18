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
create_dataset()

# 1. Get the dataset source from the user.
# Is this enough? How do we tell if the dataset is a file or existing R dataset?
# From the extension?
dataset_name <- get_name_of_required_data()

# 2. Locate and load the data.
# df <- load_dataset(dataset_name)
source('./Group5/getDataset.R')
df <- getDataset()

# Verify that the data is OK, fix or highlight problems.

# 3. Produce a Table summary of the data.
table_1 <- generate_table_1(df)
print(table1)
# flextable?

# 4. Calculate BMI.
df <- calculate_BMI(df)

# 5. Categorise BMI.
# Do we need to specify the categories?
df <- categorise_BMI(df)

# 6. Produce a Table summary of the BMI data.
# Do we need to specify what to generate?
table_2 <- generate_statistics(df)
print(table_2)
# Again, flextable?

# 7. Plot the BMI data (values, categories?).
# Do we need to specify what to generate?
plot_1 <- generate_plot(df)









  