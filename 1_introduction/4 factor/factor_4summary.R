# Introduction to R ----
## Summarize a Factor ----

# summary() function in R is a versatile tool used to provide a concise statistical summary of a dataset. It can be applied to various data types, including numeric vectors, factors, and data frames.

# Key Output:
# The specific output of summary() depends on the data type of the object you're analyzing. Howeverr, it typically includes:

# • Numeric Data:
# - Minimum value
# - First Quartile (Q1)
# - Median (Q2)
# - Third Quartile (Q3)
# - Mean
# - Maximum value

# • Factors:
# Number of observations
# Number of Levels
# The levels themselves and their frequencies

# For restarting environment
rm(list = ls())

# Create a factor_levels_vector with clean levels
levels_factor <- c("D", "U", "U", "D", "D")
factor_levels_vector <- factor(levels_factor)
levels(factor_levels_vector) <- levels(levels_factor) <- c("Down", "Up")

# Generate summary for survey_vector
summary(levels_factor)

# Generate summary for factor_levels_vector
summary(factor_levels_vector)
