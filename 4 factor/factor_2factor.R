# Introduction to R ----
## Factor ----

# factor() is a function in R that converts a vector of values into a factor, which is a special type of data structure used to represent categorical data. Factors are important for statistical analysis and data visualization, as they provide information about the categories or levels that a variable can take.

# For restarting environment
rm(list = ls())

# A nominal variable is a categorical variable implied order from A~Z

# Veggies
veggies_vector <- c("Cabbage", "Brocolli", "Letus", "Baguio Beans")
factor_veggies_vector <- factor(veggies_vector)

# Print out factor_veggies_vector
print(factor_veggies_vector)

# Temperature
temperature_vector <- c("High", "Low", "High", "Low", "Medium")
factor_temperature_vector <- factor(temperature_vector,
                                    order = TRUE,
                                    levels = c("Low", "Medium", "High"))

# Print out factor_temperature_vector
print(factor_temperature_vector)

