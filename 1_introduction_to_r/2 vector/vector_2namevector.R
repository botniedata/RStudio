# Vector ----
## names() function ----

# names() is a function in R that is used to access or assign names to the elements of an object, such as a vector, list, or data frame.

# For restarting environment
rm(list = ls())

# Sales Burger from Monday to Friday
sales_burger <- c(100, 250, 75, 15, 20)

# Sales Lemonade from Monday to Friday
sales_lemonade <- c(20, 30, 10, 25, 20)

# Assign days as names of sales_burger
names(sales_burger) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of sales_lemonade
names(sales_lemonade) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Print out of Sales Burger from Monday to Friday
print(sales_burger)

# Print out of Sales Burger from Monday to Friday
print(sales_lemonade)
