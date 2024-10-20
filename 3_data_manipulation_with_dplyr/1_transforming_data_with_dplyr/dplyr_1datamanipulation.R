# Data Manipulation with dplyr ----
## Transforming Data with dplyr ----

## dplyr package ----
# dplyr is a popular R package that provides a set of grammar-based functions for manipulating data frames efficiently. It offers a clean and intuitive syntax, making data cleaning, transformation, and aggregation tasks easier to perform.

# Load entire tidyverse package
install.packages("tidyverse")

# Load library
library(tidyverse)
library(ggplot2)
library(gapminder)

## Restarting Environment ----
rm(list = ls())

# Load gapminder dataset
gapminder

# glimpse() verb
# The glimpse() function in R is used to get a quick summary of a data frame. It provides a compact view of the data, including the column names, data types, and a few sample values from each column.
glimpse(gapminder)

# Select columns using select() verb
gapminder_selected <- gapminder %>%
  select(country, continent, year, pop)

