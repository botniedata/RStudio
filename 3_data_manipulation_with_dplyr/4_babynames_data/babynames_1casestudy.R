# Data Manipulation with dplyr ----
## Select and Transforming Data ----

## Frequency of Three baby names over time ----
# The relocate() function in R is used to reorder columns in a data frame. It takes the data frame as the first argument and then a series of column names to specify the new order.

## Load libraries ----
#install.packages("dplyr")
library(tidyverse)
library(readr)

## Restarting Environment ----
rm(list = ls())

# Read the CSV file into a tibble
babynames <- read_csv("F:\\R\\dataset\\babynames.csv")

### Code ----
babynames %>%
  # Filter for the year 1990
  filter(year == 1990) %>%

  #Sort the number column in descending order
  arrange(desc(number))

### Code ---
babynames %>%
  # Find the mose common name in each year
  group_by(year) %>%
  slice_max(number, n = 1)

### Code ---
# Select three baby names using '%in% c()'

selected_names <- babynames %>%
  # Filter for the names, Steven, Thomas, and Matthew
  filter(name %in% c("Steven", "Thomas", "Matthew"))

  # Plot the names using the different color for each name
  ggplot(selected_names, aes(x = year, y = number, color = name)) +
    geom_line()


