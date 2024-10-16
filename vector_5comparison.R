# Vector ----
## Comparison operators ----

# Comparison operators are used to compare values in R. They return a logical value (TRUE or FALSE) based on the comparison.

# list of comparison operators
# • Equal: ==
# • Not Equal: !=
# • Greather than: >
# • Less than: <
# • Greater than or equal to: >=
# • Less then a equal to: <=

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

# Total sum of vector: sales_burger and sales_lemonade
sum_burger <- sum(sales_burger)
sum_lemonade <- sum(sales_lemonade)

# Check if sales_burger is gain than in sales_lemonade
result_sales <- sum_burger > sum_lemonade

# Print out result of comparison
print(result_sales)
