# Introduction to Statistics in R ----

## Random Chances----
# Measuring chance
# What's the probability of an event
#
# Number of ways event can happen
# --------------------------------- = P(event)
# Total number of possible outcomes

# Example (Coin Flip):
# 1 way to get heads    1
# ------------------- = _ = 50% = P(heads)
# 2 possible outcomes   2

# Impossible                Will certainly happen
#     |---------------|---------------|
#     0%             50%             100%

# Sampling from a data frame
# df %>% sample_n(1)


# Load packages ----


# Restart Environment ----
rm(list = ls())

# Code ----
# Recreating a data frame as sales_count
name <- c("Amir", "Brian", "Claire", "Damian")
n_sales <- c(178, 126, 75, 65)
sales_count <- data.frame(name, n_sales)
sales_team <- data.frame(name, n_sales)

# Sampling data from a data frame
# Sampling without replacement ----
sales_count %>%
  sample_n(1) # choose randomly only 1 result

set.seed(5)
sales_count %>%
  sample_n(1) # remains the same result

sales_count %>%
  sample_n(2) # choose randomly only 2 result

# Sampling with replacement ----
sales_count %>%
  sample_n(2, replace = TRUE)


sales_count %>%
  sample(sales_count, 5, replace = TRUE)
