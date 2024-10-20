# Data Manipulation with dplyr ----
## Transforming Data with dplyr ----

## dplyr package ----
# dplyr is a popular R package that provides a set of grammar-based functions for manipulating data frames efficiently. It offers a clean and intuitive syntax, making data cleaning, transformation, and aggregation tasks easier to perform.

# The count() function in R is used to count the occurrences of unique values within a specified column or set of columns in a data frame. It returns a new data frame with two columns:
# • n: The count of occurrences.
# • <column_name>: The unique values from the specified column(s).

# Load library
library(tidyverse)
library(ggplot2)
library(gapminder)

## Restarting Environment ----
rm(list = ls())

# Selecting Columns ----
# Select country, continent, year, pop) in gapminder dataset
gapminder_selected <- gapminder %>%
  select(country, continent, year, pop)

# Sorting count ----
# Use count to find the number of country in each continent in 2007
gapminder_selected %>%
  filter(year == 2007) %>%
  count(continent, sort = TRUE)

# Sorting count, weighted ----
# Use count per country, weighted by population, sorted by descending order
gapminder_selected %>%
  filter(year == 2007) %>%
  count(country, wt = pop, sort = TRUE )


