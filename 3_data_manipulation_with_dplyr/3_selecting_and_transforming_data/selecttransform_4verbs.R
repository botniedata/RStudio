# Data Manipulation with dplyr ----
## Select and Transforming Data ----

## 4 Verbs ----
# The relocate() function in R is used to reorder columns in a data frame. It takes the data frame as the first argument and then a series of column names to specify the new order.

## Load libraries ----
install.packages("dplyr")
library(tidyverse)
library(readr)

## Restarting Environment ----
rm(list = ls())

# Read the CSV file into a tibble
counties <- read_csv("F:\\R\\dataset\\counties.csv")

### Code 4 Verbs (select(), mutate(), rename(), and relocate()) ----
# Change the name of the unemployment column
counties %>%
  rename(unemployment_rate = unemployment)

# Keep the state and county columns, and the columns containing poverty
counties %>%
  select(state, county, contains("poverty"))

# Calculate the fraction_women column without dropping the other column
counties %>%
  mutate(fraction_women = women / population)

# Move the region to before state
counties %>%
  relocate(region, .before = state)





