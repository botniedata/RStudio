# Vector ----
## Selection Containing Elements----

# In R, square brackets [] are used to access elements or subsets of objects.
# is a shorthand notation in R to extract elements 2 to 4 from a vector

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

# Define a new variable based on a selection elements (Tuesday to Thrusday)
tth_lemonade <- sales_lemonade[2:4]

# Print out fml_burger (Tuesday to Thrusday)
print(tth_lemonade)
