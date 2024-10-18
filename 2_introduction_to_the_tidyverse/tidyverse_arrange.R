# Introduction to the Tidyverse ----
## arrange() verb ----
# arrange() verb in R is used to order or sort data frames based on specific columns. It takes a data frame as input and returns a new data frame with the rows rearranged according to the specified sorting criteria.

## Loading packages (gapminder) created by Jenny Bryan ----
library(gapminder)

## Loading packages (dplyr) /dee-ply-er/ ----
library(dplyr)

## Restarting Environment ----
rm(list = ls())

## Display gapminder dataset - data frame called tibble ----
gapminder

### Code ----
# Sorting with arrange (gdpPercap)
# default in ascending format
gapminder %>%
  arrange(gdpPercap)

# Sorting with arrange(gdpPerCap)
# In descending format
gapminder %>%
  arrange(desc(gdpPercap))
