# Data Manipulation with dplyr ----
## Babynames Case Study ----

## Finding the year each name is most common ----

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
# Adding the total and maximum for each name
names_normalized <- babynames %>%
                    group_by(name) %>%
  
  # name_total: the sum of the number of babies born with the name in the entire dataset.
  mutate(name_total = sum(number),
         # name_max: the maximum of babies born with that name in a year.       
         name_max = max(number)) %>%
  # ungroup the table
  ungroup() %>%
  # create a fraction of of name_max in a whole dataset
  mutate(fraction_max = number / name_max)

### Code ----
names_filtered <- names_normalized %>%
  # Filter for the names Steven, Thomas, and Matthew
  filter(name %in% c("Steven", "Thomas", "Matthew"))
  
  # Visualize the names in names_filtered over time
  ggplot(names_filtered, aes(x = year, y = fraction_max, color = name)) + 
  geom_line()



