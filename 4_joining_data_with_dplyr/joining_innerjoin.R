# Joining Data with dplyr ----
## inner_join() verb ----
# The inner_join() function in R is used to join two data frames based on common columns. It returns only the rows that have matching values in both data frames.

# Load packages ----
library(tidyverse)
library(readr)
library(ggplot2)

# Restart Environment ----
rm(list = ls())

# Inner Join ----

# Read the CSV file into a tibble
parts <- read_csv("F:\\R\\dataset\\parts.csv")
part_categories <- read_csv("F:\\R\\dataset\\part_categories.csv")

## inner_join verb ----
parts %>%
  inner_join(part_categories, by = c("part_cat_id" = "id"))

## inner_join with suffix ----
parts %>%
  inner_join(part_categories, by = c("part_cat_id" = "id"), suffix = c("_part", "_category") )

## extra ----
# code 
count_categories <- parts %>%
  inner_join(part_categories, by = c("part_cat_id" = "id"), suffix = c("_part", "_category") ) %>%
  count(name_category) %>%
  rename(count_category = n) %>%
  arrange(desc(count_category)) %>%
  head(n = 3)

print(count_categories)

# plot
ggplot(count_categories, aes(x = name_category, y = count_category)) +
  geom_col()

