# Introduction to R ----
## Factor ----

# factor() is a function in R that converts a vector of values into a factor, which is a special type of data structure used to represent categorical data. Factors are important for statistical analysis and data visualization, as they provide information about the categories or levels that a variable can take.

# For restarting environment
rm(list = ls())

# Panning Vector
pan_vector <- c("Left", "Right", "Right", "Left", "Left")

# Convert pan_vector to a factor
factor_pan_vector <- factor(pan_vector)

# Print out factor_pan_vector
print(factor_pan_vector)


