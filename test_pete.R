# Test functions.
create_dataset <- function(){
    cat('Create some datasets.\n')
}

# 1. Get the dataset source from the user.
# Is this enough? How do we tell if the dataset is a file or existing R dataset?
# From the extension?
get_name_of_required_data <- function(){
    table <- 'Get data name'
        cat('Get the name of the data from the user.\n')
    return(table)
}

# 2. Locate and load the data.
load_dataset <- function(dataset_name){
    df <- 'the dataset'
        cat('Read the data given by', dataset_name, '.\n')
    return(df)
}

# Verify that the data is OK, fix or highlight problems.

# 3. Produce a Table summary of the data.
generate_table_1 <- function(df){
    table <- 'TABLE1'
        cat('Statistics for the weight/height data\n')
        cat('Using data frame:\n')
        sample_n(df, 5)
    return(table)
}

# 4. Calculate BMI.
calculate_BMI <- function(df){
    table <- 'Calculate'
        cat('Calculate the BMI data\n')
        cat('Using data frame:\n')
        sample_n(df, 5)
    return(df)
}

# 5. Categorise BMI.
# Do we need to specify the categories?
categorise_BMI <- function(df){
    table <- 'Categorise'
        cat('Categorise the BMI data\n')
        cat('Using data frame:\n')
        sample_n(df, 5)
    return(df)
}

# 6. Produce a Table summary of the BMI data.
generate_statistics <- function(df){
  table <- 'TABLE2'
    cat('Statistics for the BMI data\n')
    cat('Using data frame:\n')
    sample_n(df, 5)
  return(table)
}
# Again, flextable?

# 7. Plot the BMI data (values, categories?).
generate_plot <- function(df){
    cat('Plotting the data.\n')
    cat('Using data frame:\n')
    sample_n(df, 5)
}

