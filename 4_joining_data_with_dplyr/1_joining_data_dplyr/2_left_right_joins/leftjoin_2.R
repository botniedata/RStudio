# Joining Data with dplyr ----
## left_join() verb ----
# A left join, in the context of relational databases and data analysis, is a type of join operation that returns all rows from the left table, along with the matched rows from the right table. If there's no match for a row in the left table, the corresponding columns from the right table are filled with NULL or NA values.

# Load packages ----
library(dplyr)
library(tidyverse)
library(readr)

# Restart Environment ----
rm(list = ls())

# Load CSV ----
inventory_parts_joined <- read_csv("F:\\R\\dataset\\bat\\inventory_parts_joined.csv")

## Filter out the 2 Sets ----

# millennium_falcon set number is 7965-1
millennium_falcon <- inventory_parts_joined %>%
  filter(set_num == "7965-1")

# star_destroyer set number is 75190-1
star_destroyer <- inventory_parts_joined %>%
  filter(set_num == "75190-1")

## left_join ----
millennium_falcon %>%
  left_join(star_destroyer, by = c("part_num", "color_id"), suffix = c("_falcon", "_star_destroyer"))

## Aggregate ----
# Aggregate Millennium Falcon for the total quantity in each part
millennium_falcon_colors <- millennium_falcon %>%
  group_by(color_id) %>%
  summarize(total_quantity = sum(quantity))

# Aggregate Star Destroyer for the total quantity in each part
star_destroyer_colors <- star_destroyer %>%
  group_by(color_id) %>%
  summarize(total_quantity = sum(quantity))

# Left join the Millennium Falcon colors to the Star Destroyer colors
millennium_falcon_colors %>%
  left_join(star_destroyer_colors, by = "color_id" , suffix = c("_falcon", "_star_destroyer"))