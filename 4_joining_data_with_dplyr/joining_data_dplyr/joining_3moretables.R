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
sets <- read_csv("F:\\R\\dataset\\parts_inventory\\sets.csv")
inventories <- read_csv("F:\\R\\dataset\\parts_inventory\\inventories.csv")
inventory_parts <- read_csv("F:\\R\\dataset\\parts_inventory\\inventory_parts.csv")
colors <- read_csv("F:\\R\\dataset\\parts_inventory\\colors.csv")

## Joining sets and inventories tables ----
sets %>%
  # Add inventories using an inner join 
  inner_join(inventories, by = "set_num") %>%

## Joining sets and inventories to inventory_parts table ----
# Add inventory_parts using an inner join 
inner_join(inventory_parts, by = c("id" = "inventory_id"))

## Joining 4 tables and Count the name_colors in descending order ----
sets %>%
  inner_join(inventories, by = "set_num") %>%
  inner_join(inventory_parts, by = c("id" = "inventory_id")) %>%
  inner_join(colors, by = c("color_id" = "id"), suffix = c("_set", "_color")) %>%
  
## Count the number of colors and sort
  count(name_color, sort = TRUE) %>%
  rename(count_color = n)
