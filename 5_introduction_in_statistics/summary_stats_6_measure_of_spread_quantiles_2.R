# Introduction to Statistics in R ----

## Measure of Spread ----
### Quantiles ----
# also called percentiles, are a generalized version of quartile, so they can split data into 5 pieces or 10 pieces.

# Load packages ----
#install.packages("tidyverse")
library(tidyverse)
library(dplyr)
library(readr)
library(ggplot2)


# Restart Environment ----
rm(list = ls())

# Load CSV ----
food_consumption <- read_csv("F:\\R\\dataset\\2018 Food Carbon Footprint Index by nu3\\food_consumption.csv")

levels_category <- food_consumption$food_category
factor_category <- factor(food_consumption$food_category)
levels(factor_category)<- levels(levels_category)<- c("beef", "eggs", "fish", "lamb_goat",
                                                      "dairy", "nuts", "pork", "poultry",
                                                      "rice", "soybeans", "wheat")

# Code ----
# Quantiles by default
quantile(food_consumption$consumption)

# Quantiles using probs function ----
quantile(food_consumption$consumption, probs = c(0, 0.2, 0.4, 0.6, 0.8, 1))

# Quantiles using seq function ----
# seq(start_from, end_to, sequence_by)
quantile(food_consumption$consumption, probs = seq(0, 1, 0.2))

# Interquartile range (IQR) ----
# distance between the 25th and 75th percentile, which the height of the box in a boxplot
iqr = quantile(food_consumption$consumption, 0.75) - quantile(food_consumption$consumption, 0.25)
iqr

# Outliers ----
# data points that is substantially different from the others
# data < Q1 - 1.5 * IQR or
# data > Q3 + 1.5 * IRR

# Finding Outliers
# Calculate the IQR:
iqr_2 <- quantile(food_consumption$consumption, 0.75) - quantile(food_consumption$consumption, 0.25)
# Calculate the lower_threshold and upper_threshold
lower_threshold <- quantile(food_consumption$consumption, 0.25) - 1.5 * iqr_2
upper_threshold <- quantile(food_consumption$consumption, 0.75) + 1.5 * iqr_2

food_consumption %>%
  # Filter the data frame whose consumption is above or below the threshold
  filter(consumption < lower_threshold | consumption > upper_threshold) %>%
  # Select all observations and columns
  select(country, food_category, consumption, co2_emission)
