# Introduction to Statistics in R ----

## Measure of Center

## mean() ----
# The mean, or average, is a statistical measure that represents the central tendency of a dataset. It's calculated by summing all the values in the dataset and dividing by the number of values.

# n1 + n2 + n3 + n4 + n5
# ---------------------- = mean
#         n()
#
# Code:
# mean(df$col_name)

## median() ----
# The median is a statistical measure that represents the middle value in a dataset when the values are arranged in ascending or descending order. It's particularly useful when dealing with skewed data or outliers, as it's less sensitive to extreme values compared to the mean.

# Sorting all data points and taking the middle
# sort(df$col_name)
#
# Index 42
# sort(df$col_name)[42]
#
# Code:
# median(df$col_name)

## mode ----
# The mode is a statistical measure that represents the most frequently occurring value in a dataset. Unlike the mean and median, which provide measures of central tendency, the mode identifies the most common value.

# Code
# Count and sort col_name in descending order
# df %>% count(col_name, sort = TRUE)
#
#   col_name          n
#      <type>     <type>
# 1 col_val_1     N_val_1       << col_val_1 that action for n_val_1
# 2 col_val_2     N_val_2
# 3 col_val_3     N_val_3
# 4 col_val_4     N_val_4

