# Data Manipulation with dplyr ----
## Aggregate ----

## dplyr package ----
# dplyr is a popular R package that provides a set of grammar-based functions for manipulating data frames efficiently. It offers a clean and intuitive syntax, making data cleaning, transformation, and aggregation tasks easier to perform.

# The slice_min() function in R is used to extract the rows with the minimum values in a specified column or set of columns from a data frame. It returns a new data frame containing only the rows with the minimum values.

# The slice_max() function in R is used to extract the rows with the maximum values in a specified column or set of columns from a data frame. It returns a new data frame containing only the rows with the maximum values.

# Load library
library(tidyverse)
library(ggplot2)
library(gapminder)

## Restarting Environment ----
rm(list = ls())

# Glimpse of dataset ----
glimpse(gapminder)

### Code ----
gapminder_selected <- gapminder %>%
  select(country, continent, lifeExp) %>%
  slice_max(lifeExp, n = 1) %>%
  ungroup() %>%
  count(continent)

# Print out result
gapminder_selected

