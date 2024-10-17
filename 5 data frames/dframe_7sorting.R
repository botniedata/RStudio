# Introduction to R ----
## Sorting ----

## Data Frame ----

# subset() function in R is a convenient way to extract a subset of a data frame based on specific conditions. It allows you to filter rows or columns based on logical expressions.

# For restarting environment
rm(list = ls())

### Code ----

# Create a numeric vector named a and assign the values 100, 10, 1000
a <- c(100, 10, 1000)

# order() function takes the vector 'a' as input and returns a vector of indices that would sort the elements of a in ascending order.
order(a)

# Sorting a vector in ascending order
sorted_a <- a[order(a)]