# Data Manipulation with dplyr ----
## Transforming Data with dplyr ----

## filter() and arrange() verb in dplyr package ----

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

# Select columns using select() verb
gapminder_selected <- gapminder %>%
  select(country, continent, year, pop)

# Sort the population on descending order
gapminder_selected %>%
  arrange(desc(pop))

# Filter the country with population above 1000000
gapminder_selected %>%
  filter(pop > 10000000)

# Filter the country in continent of Europe with population is above 80000000 (80 Million)
gapminder_selected %>%
  filter(continent == "Europe",
         pop > 80000000) q 

# Filter and Arrange
gapminder_selected %>%
  filter(continent == "Asia", country == "Philippines") %>%
  arrange(desc(year))