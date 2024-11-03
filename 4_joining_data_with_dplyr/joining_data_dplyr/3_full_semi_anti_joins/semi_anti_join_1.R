# Joining Data with dplyr ----
## semi_join() and anti_join() ----
# review joins:
# full join: keep all observations from both tables
# semi join: filter the first table for observations that match the second
# anti join: filter the first table for observations that don't match the second

# Load packages ----
library(dplyr)
library(tidyverse)
library(readr)

# Restart Environment ----
rm(list = ls())

# Load CSV ----
# Data sets are separated and joined as inventory_parts_joined data frame
inventories <- read_csv("F:\\R\\dataset\\parts_inventory\\inventories.csv")
inventory_parts <- read_csv("F:\\R\\dataset\\parts_inventory\\inventory_parts.csv")

## Filtering Data frame ----
# Create a Data frame as inventory_parts_joined as inner_join of inventories and inventory_parts
inventory_parts_joined <- inventories %>%
  # Inner join inventories and inventory_parts using id and inventory_id
  inner_join(inventory_parts, by = c("id" = "inventory_id")) %>%
  # Arrange the quantity in descending order
  arrange(desc(quantity)) %>%
  # Remove in selection the id and version column
  select(-id, -version)

# Filter data sets batmobile and batwing ----
batmobile <- inventory_parts_joined %>%
  filter(set_num == "7784-1") %>%
  select(-set_num)

batwing <- inventory_parts_joined %>%
  filter(set_num == "70916-1") %>%
  select(-set_num)

# Code ----
# Filter the batwing set for parts that are also in the batmobile set
semi_batwing <- batwing %>%
  semi_join(batmobile, by = "part_num")

# Filter the batwing set for parts that aren't in the batmobile set
anti_batwing <- batwing %>%
  anti_join(batmobile, by = "part_num")


