# Data Manipulation with dplyr ----
## Babynames Case Study ----

## Finding the year each name is most common ----

## Load libraries ----
#install.packages("dplyr")
library(tidyverse)
library(readr)

## Restarting Environment ----
rm(list = ls())

# Read the CSV file into a tibble
babynames <- read_csv("F:\\R\\dataset\\babynames.csv")

### Code ----
# Calculate the fraction of people born each year with the same name
babynames %>%
  group_by(year) %>% # group it by year
  mutate(year_total = sum(number)) %>% # calculate sum of number per year
  ungroup() %>% # remove grouping applied in the data frame
  mutate(fraction = number / year_total) %>%
  
  # Find the year each name is most common
  group_by(name) %>% # group it by name
  slice_max(fraction, n = 1) # slice on it's maximum result on fraction

### Code ----
# Adding the total and maximum for each name
babynames %>%
  group_by(name) %>%
  
  # name_total: the sum of the number of babies born with the name in the entire dataset.
  mutate(name_total = sum(number),
         # name_max: the maximum of babies born with that name in a year.       
         name_max = max(number)) %>%
  # ungroup the table
  ungroup() %>%
  # create a fraction of of name_max in a whole dataset
  mutate(fraction_max = number / name_max)




