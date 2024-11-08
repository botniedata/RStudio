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
food_consumption %>%
  # Filter for rice food category
  filter(factor_category == "rice") %>%
  
  # Create histogram of co2_emission
  ggplot(aes(x = co2_emission)) +
  geom_histogram()

# Histogram plotted as Right-skewed

food_consumption %>%
  # Filter for rice food category
  filter(factor_category == "rice") %>%
  # Create histogram of co2_emission
  ggplot(aes(co2_emission)) +
  geom_histogram()

food_consumption %>%
  # Filter for rice food category
  filter(factor_category == "rice") %>% 
  # Summarize the mean_co2 and median_co2
  summarize(mean_co2 = mean(co2_emission),
            median_co2 = median(co2_emission))

# Median measures the central tendency to summarizes the kilograms co2 emissions per person per year of rice


