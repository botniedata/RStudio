# Data Manipulation with dplyr ----
## Transforming Data with dplyr ----

## dplyr package ----
# dplyr is a popular R package that provides a set of grammar-based functions for manipulating data frames efficiently. It offers a clean and intuitive syntax, making data cleaning, transformation, and aggregation tasks easier to perform.

# group_by() function in R is used to group a data frame by one or more variables. This allows you to perform calculations or transformations on specific subsets of the data based on the grouping variables.

# The summarize() function in R is used to summarize a data frame by calculating statistics for specified columns. It typically follows a group_by() operation to calculate summary statistics for each group in the data.

# The ungroup() function in R is used to remove any existing grouping from a data frame. This is useful when you want to perform operations on the entire dataset without considering any grouping variables.

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

# Display 2007 total population by descending in 2007 per country
gapminder_selected %>%
  filter(year == 2007) %>%
  group_by(country) %>%
  summarize(total_population = sum(pop)) %>%
  arrange(desc(total_population))


