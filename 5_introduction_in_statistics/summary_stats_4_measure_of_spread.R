# Introduction to Statistics in R ----

## Measure of Spread ----
### Variance ----
# Variance: Average distance from each data points to the data's mean.
#
# Code: 
# var_name_1 <- df$col_name - mean(df$col_name)
#
# Squared the variance:
# var_name_2 <- (var_name_1)^2
#
# Sum all squared variance:
# var_name_3 <- sum(var_name_2)
#
# Divide the Sum Squared to the count of data points:
# var_name_3/[count_of_data_points]-1   # unit of measure is squared

# Calculate variance in one code
# var(df$col_name)

### Standard deviation ----
# Calculate the standard deviation:
# sqrt(var(df$col_name))
#
# or can be used in one code:
# sd(df$col_name)

### Mean Absolute Deviation ----
# Calculate Mean absolute deviation:
# var_name_4 <- df$col_name - mean(df$col_name)
# mean(abs(var_name_4))

### Standard deviation vs. mean absolute deviation ----
# SD squares distance, penalizing longer distance more than shorter ones.
# MAD penalizes each distance equally
# One isn't better than the other, but SD is more common than MAD.


