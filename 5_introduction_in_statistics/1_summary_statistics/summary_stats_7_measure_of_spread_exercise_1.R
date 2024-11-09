# Introduction to Statistics in R ----

## Measure of Spread ----
### Quantiles ----
# also called percentiles, are a generalized version of quartile, so they can split data into 5 pieces or 10 pieces.

# Details ----
# Variance: The average of the squared distances from each data point to the mean. It's a measure of how spread out the data is. The formula involves squaring the differences between each data point and the mean, summing these squares, and dividing by the number of data points minus one. High variance indicates more spread out data.
# Standard Deviation (SD): The square root of the variance, providing a measure of spread that is in the same units as the data. It's easier to interpret than variance because it relates more directly to the data points.
# Mean Absolute Deviation (MAD): Similar to standard deviation but uses absolute values instead of squaring the distances. It treats all deviations from the mean equally, without giving extra weight to larger deviations like the standard deviation does.
# Quartiles and Quantiles: Methods to divide the data into equal parts. Quartiles split the data into four parts, and the Interquartile Range (IQR) is the difference between the first and third quartiles, offering a measure of spread that is robust against outliers.
# Outliers: Points that are significantly different from the rest of the data. They can be identified using the IQR; any data point more than 1.5 times the IQR below the first quartile or above the third quartile is considered an outlier.

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

# Plot into a graph
food_consumption %>% 
  group_by(food_category) %>% 
  summarize(var_co2 = var(co2_emission),
            sd_co2 = sd(co2_emission))

ggplot(food_consumption, aes(co2_emission)) +
  geom_histogram(binwidth = 30) +
  # Create into multiple plots
  facet_wrap(~ food_category)