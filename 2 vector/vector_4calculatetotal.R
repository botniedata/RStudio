# Vector ----
## Calculating Vectors using sum() function ----

# sum() is a built-in function in R that is used to calculate the sum of a set of numbers. It takes a numeric vector as input and returns a single numeric value representing the sum of all elements in the vector.

# For restarting environment
rm(list = ls())

# Sales Burger from Monday to Friday
sales_burger <- c(100, 250, 75, 15, 20)

# Sales Lemonade from Monday to Friday
sales_lemonade <- c(20, 30, 10, 25, 20)

# Assign variable of days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Sum total of sales_burger
sum_burger <- sum(sales_burger)

# sum total of sales_lemonade
sum_lemonade <- sum(sales_lemonade)

# total sales in a week
total_sales <- sum(sum_burger, sum_lemonade)

# Print out total_sales
total_sales