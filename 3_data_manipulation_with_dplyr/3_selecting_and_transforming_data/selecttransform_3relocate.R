# Data Manipulation with dplyr ----
## Select and Transforming Data ----

## relocate() verb ----
# The relocate() function in R is used to reorder columns in a data frame. It takes the data frame as the first argument and then a series of column names to specify the new order.

## Load libraries ----
install.packages("dplyr")
library(tidyverse)
library(readr)

## Restarting Environment ----
rm(list = ls())

# Read the CSV file into a tibble
counties <- read_csv("F:\\R\\dataset\\counties.csv")

### Code relocate() verb ----

counties_selected <- counties %>%
  mutate(density = population / land_area) %>%
  select(density, state, population, county, land_area)

counties_selected %>%
  # Move the density column to the end
  relocate(density, .after = last_col()) %>%
  
  # Move the population column before land_area
  relocate(population, .before = land_area)





