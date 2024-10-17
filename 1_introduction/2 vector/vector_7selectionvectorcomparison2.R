# Vector ----
## Selection Vector by Comparison----

# Selection by Comparison using operator
# This will create a vector with TRUE for those days where sold below or above 50
# TRUE if sales_burger is greather than 50, FALSE if the sales burger is less than 50
# Extracting Subset values for days where the result is TRUE in a vector

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

# Which days did you make a sales more than 50?
sales_burger_above50 <- sales_burger > 50


# Which days did you make a sales more than 50?
sales_burger_below50 <- sales_burger < 50

# Select from sales_burger these days
burger_above50 <- sales_burger[sales_burger_above50]
burger_below50 <- sales_burger[sales_burger_below50]

# Select from sales_burger these days
print(burger_above50)
print(burger_below50)