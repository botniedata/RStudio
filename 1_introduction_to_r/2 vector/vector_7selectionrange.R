# Vector ----
## Selection Containing Elements----

# In R, square brackets [] are used to access elements or subsets of objects.
# c(1, 3, 5) is a simple expression in R that creates a numeric vector containing the elements 1, 3, and 5.

# For restarting environment
rm(list = ls())

# Sales Burger from Monday to Friday
sales_burger <- c(100, 250, 75, 15, 20)

# Sales Lemonade from Monday to Friday
sales_lemonade <- c(20, 30, 10, 25, 20)

# Assign variable of days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign names to sales_burger and sales_lemonade
names(sales_burger) <- days_vector
names(sales_lemonade) <- days_vector

# Define a new variable based on a selection elements (first, mid and last day of the weekdays)
fml_burger <- sales_burger[c(1, 3, 5)]

# Print out fml_burger (first, mid and last day of the weekday)
print(fml_burger)
