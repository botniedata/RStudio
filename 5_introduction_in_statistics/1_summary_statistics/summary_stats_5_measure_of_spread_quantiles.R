# Introduction to Statistics in R ----

## Measure of Spread ----
### Quartiles ----
# Splits up the data into four equal parts. quantile function to get the quartiles of the data.
#
# Code:
# quantile(df$col_name)
#     0%      25%     50%     75%     100%
#   val_1   val_2   val_3   val_4   val_5
#
# Secode quartile / 50th percentile = median


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
# Quantiles of food_consumption's food_category
quantile(food_consumption$food_category)

# Boxplot use quartiles
# Bottom of the Box: first quartile
# Top of the Box: third quartile
# Middle line: second quartile, or the median
ggplot(food_consumption, aes(y = food_category)) +
  geom_boxplot()

