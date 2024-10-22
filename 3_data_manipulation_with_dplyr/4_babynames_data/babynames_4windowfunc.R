# Data Manipulation with dplyr ----
## Babynames Case Study ----

## Using ratios to describe the frequency of a name ----

## Load libraries ----
#install.packages("dplyr")
library(tidyverse)
library(readr)
library(ggplot2)

## Restarting Environment ----
rm(list = ls())

# Read the CSV file into a tibble
babynames <- read_csv("F:\\R\\dataset\\babynames.csv")

### Data Frame Table: names_normalized ----
# Calculate the fraction of people born each year with the same name
babynames_fraction <- babynames %>%
                      group_by(year) %>% # group it by year
                      mutate(year_total = sum(number)) %>% # calculate sum of number per year
                      ungroup() %>% # remove grouping applied in the data frame
                      mutate(fraction = number / year_total) %>% # fraction of number per year total

  # Arrange the data in order of name, then year
  arrange(name, year) %>%
  
  # Group the data by name
  group_by(name) %>%
  
  # Add a ratio column that contains the ratio of fraction between each year
  mutate(ratio = fraction / lag(fraction))

# Biggest jumps in a name
  babynames_ratios_filtered <- babynames_fraction %>%
                               arrange(name, year) %>%
                               group_by(name) %>%
                               mutate(ratio = fraction / lag(fraction)) %>%
                               filter(fraction >= 0.00001)
  
  babynames_ratios_filtered %>%
    # Extract the largest ratio from each name 
    slice_max(ratio, n = 1) %>%
    # Sort the ratio column in descending order 
    arrange(desc(ratio)) %>%
    # Filter for fractions greater than or equal to 0.001
    filter(fraction >= 0.001)
