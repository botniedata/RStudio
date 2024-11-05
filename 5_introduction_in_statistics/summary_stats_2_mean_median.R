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

# Load packages ----
library(dplyr)
library(tidyverse)
library(readr)

# Restart Environment ----
rm(list = ls())

# Load CSV ----
food_consumption <- read_csv("F:\\R\\dataset\\2018 Food Carbon Footprint Index by nu3\\food_consumption.csv")

# Code ----
# Calculate mean food consumption
mean(food_consumption$consumption)

# Calculate the median food consumption
median(food_consumption$consumption)

# Calculate the mode food consumption
food_consumption %>%
  count(consumption, sort = TRUE)


