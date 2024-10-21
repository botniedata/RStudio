# Data Manipulation with dplyr ----
## Select and Transforming Data ----

## rename() verb ----
# The rename() function in R is used to rename columns in a data frame. It takes the data frame as the first argument and then a series of key-value pairs to specify the new column names.

## Load libraries ----
install.packages("dplyr")
library(tidyverse)
library(readr)

## Restarting Environment ----
rm(list = ls())

# Read the CSV file into a tibble
counties <- read_csv("F:\\R\\dataset\\counties.csv")

### Code rename() verb ----
# Count the number of counties in each state
counties %>%
  count(state) %>%

# Rename the n column to num_counties
  rename(num_counties = n)

### Code renaming using 'new_name' = 'old_name'----
# Select state, county, and poverty as poverty_rate
counties %>%
  select(state, county, poverty_rate = poverty)




