# Introduction to Statistics in R ----

##  Distribution of Normal Distribution ----
# Shape is commonly referred to as a "bell curve"
# Properties of a normal distribution, 
# • it's symmetrical (left side is mirror image of the right)
# • the area beneath the curve is equal to 1
# • probability never hits 0 (zero) - 0.006% of its area is contained beyond the edges of this graph

# Normal distribution (68-95-99.7 rule): 
# 68% of the area falls within 1 standard deviation
# 95% of the area falls within 2 standard deviation
# 99.7% of the area falls within 3 standard deviation

# Load packages ---- 
library(dplyr)
library(readr)
library(ggplot2)

# Restart Environment ----
rm(list = ls())

# Load data set ----
# Datas set
new_sales <- read_csv("F:\\R\\dataset\\new_sales.csv")

### Code 2 ----
mean_new_sales <- mean(new_sales$amount)
sd_new_sales <- sd(new_sales$amount)

# Calculate new average amount increased by 20%
new_mean <- mean_new_sales + (mean_new_sales * 0.20)
# Calculate new sd amount increased by 30%
new_sd <- sd_new_sales + (sd_new_sales * 0.30)

# Create new column and simulate 36 random samples with the new value
new_sales <- new_sales %>%
  mutate(amount = rnorm(36, new_mean, new_sd))

# Create histogram with 10 bins
ggplot(new_sales, aes(x = amount)) + 
  geom_histogram(bins = 10)

# Scenario:
# The key metric that the company uses to evaluate salespeople is the percent of sales they make over $1000 since the time put into each sale is usually worth a bit more than that, so the higher this metric, the better the salesperson is performing.
# 
# Recall that Amir's current sales amounts have a mean of $5000 and a standard deviation of $2000, and Amir's predicted amounts in next quarter's market have a mean of $6000 and a standard deviation of $2600.
# 
# Based only on the metric of percent of sales over $1000, does Amir perform better in the current market or the predicted market?

current_sales <- pnorm(1000, mean = 5000, sd = 2000, lower.tail = FALSE)
predicted_sales <- pnorm(1000, mean = 6000, sd = 2600, lower.tail = FALSE)
difference_sales <- current_sales - predicted_sales
difference_sales

