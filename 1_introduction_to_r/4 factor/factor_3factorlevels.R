# Introduction to R ----
## Factor Levels ----

# levels() function in R is used to retrieve or set the levels of a factor variable.

# For restarting environment
rm(list = ls())

# Create a levels_factor vector
levels_factor <- c("D", "U", "U", "D", "D")

# Convert levels_factor to a factor
# Factor will have the levels "D" and "Up"
factor_levels_vector <- factor(levels_factor)

# Specify the levels of factor_levels_vector
# Modifies the levels for factor_levels_vector and levels_factor to be "Down" and "Up". This essentially changes the labels associated with the levels "D" and "U" in the both vectors
x <- levels(factor_levels_vector) <- levels(levels_factor) <- c("Down", "Up")

# Print out levels
factor_levels_vector

