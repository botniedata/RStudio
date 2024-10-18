# Introduction to the Tidyverse ----
## filter() verb ----

## Gapminder: A Globla Dataset for Exploring Social and Economic Trends ----
# Gapminder is a renowned dataset that provides comprehensive information on various social and economic indicators for countries around the world. It's a valuable resource for researchers, policymakers, and data analysts interested in global development and inequality.

## filter() verb ----
# filter() verb in R is a powerful tool for selecting specific rows from a data frame based on conditions. It allows you to extract subsets of your data that meet certain criteria.

## pipe operator '%>%'----
# tool that allows you to chain together multiple functions in a more readable and intuitive way. It takes the output of one function and passes it as the first argument to the next function.

## Loading packages (gapminder) created by Jenny Bryan ----
library(gapminder)

## Loading packages (dplyr) /dee-ply-er/
library(dplyr)

# Restarting Environment ----
rm(list = ls())

# Display gapminder dataset - data frame called tibble ----
gapminder

### Code ----

# Filter for one year (2007)
gapminder %>%
  filter(year == 2007)

# Filter for one country ("United States")
gapminder %>%
  filter(country == "United States")

# Filter for two variables
gapminder %>%
  filter(year == 2007,
         country == "United States")

