# Joining Data with dplyr ----
## inner_join() verb One to Many ----
# The inner_join() function in R is used to join two data frames based on common columns. It returns only the rows that have matching values in both data frames.

# Load packages ----
library(dplyr)
library(tidyverse)
library(readr)


# Restart Environment ----
rm(list = ls())

# Inner Join ----

# Read the CSV file into a tibble
parts <- read_csv("F:\\R\\dataset\\parts_inventory\\parts.csv")
inventory_parts <- read_csv("F:\\R\\dataset\\parts_inventory\\inventory_parts.csv")

## parts table inner join to inventory_parts using part_num ----
parts %>%
  inner_join(inventory_parts, by = "part_num")

## inventory_parts table inner join to parts using part_num ----
inventory_parts %>%
  inner_join(parts, by = "part_num")