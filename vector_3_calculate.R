# Vector ----
## Calculating Vectors ----

# Calculating the sum of sales_burger and sales_lemonade vectors

# For restarting environment
rm(list = ls())

# Sales Burger from Monday to Friday
sales_burger <- c(100, 250, 75, 15, 20)

# Sales Lemonade from Monday to Friday
sales_lemonade <- c(20, 30, 10, 25, 20)

# The sum of sales_burger and sales_lemonade vectors
total_sales <- sales_burger + sales_lemonade

# Assign variable of days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days_vector to total_sales
names(total_sales) <- days_vector

# Print out the total_sales 
print(total_sales)
