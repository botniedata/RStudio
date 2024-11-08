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
# Variance of co2_emission in food_consumption dataset.
var(food_consumption$co2_emission)

# Standard deviation of co2_emission in food_consumption dataset.
sd(food_consumption$co2_emission)

# Quartiles of co2_emission
quantile(food_consumption$co2_emission)

# Quintiles of co2_emission using probs function (5 pieces)
quint <- 1 / 5
quantile(food_consumption$co2_emission, probs = seq(0, 1, quint))

# 10 pieces of co2_emission using probs function
pc10 <- 1 / 10
quantile(food_consumption$co2_emission, probs = seq(0, 1, pc10))

# Finding the Outliers and IQR
# Compute the 25th and 75th percentile of co2_emission
q1 <- quantile(food_consumption$co2_emission, 0.25)
q3 <- quantile(food_consumption$co2_emission, 0.75)

# Compute the IQR of co2_emission
iqr <- q3 - q1
iqr

# Calculate the lower and upper cutoffs for outliers
lower <- q1 - 1.5 * iqr
upper <- q3 + 1.5 * iqr

# Filter emissions_by_country to find outliers
food_consumption %>%
  filter(food_consumption$co2_emission < lower | food_consumption$co2_emission > upper)
