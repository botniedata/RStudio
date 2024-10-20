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

### Code ----
# Select columns using select() verb
gapminder_selected <- gapminder %>%
  select(country, continent, year, pop)

# Rate of population
gapminder_selected %>%
  mutate(pop_rate = (100 / pop)) %>%
  arrange(desc(year))

# population in 2017 in millions
# using mutate() and .keep = "none" for new table
gapminder %>%
  filter(year == 2007) %>%
  mutate(country, continent, year,
         pop_mil = pop / 1000000, .keep = "none") %>%
  arrange(desc(pop_mil))



