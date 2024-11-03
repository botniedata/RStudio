# Joining Data with dplyr ----
## self join using inner_join() verb----
# A self-join is a technique where a table is joined with itself to establish a relationship between rows within the same table. This is particularly useful for hierarchical or temporal comparisons.

### Recall about Joining tables ----
# inner_join() : keep only observations that match perfectly between tables
# left_join() : keep all observation in the first table, including matches observations in the second table
# right_join() : keep all observation in the second table, including matches observations in the first table.

# Load packages ----
library(dplyr)
library(tidyverse)
library(readr)

# Restart Environment ----
rm(list = ls())

# Load CSV ----
inventories <- read_csv("F:\\R\\dataset\\parts_inventory\\inventories.csv")
inventory_parts <- read_csv("F:\\R\\dataset\\parts_inventory\\inventory_parts.csv")

# Code ----
## Filtering Data frame ----
# Create a Data frame as inventory_parts_joined as inner_join of inventories and inventory_parts
inventory_parts_joined <- inventories %>%
  
  # Inner join inventories and inventory_parts using id and inventory_id
  inner_join(inventory_parts, by = c("id" = "inventory_id")) %>%
  
  # Arrange the quantity in descending order
  arrange(desc(quantity)) %>%
  
  # Remove in selection the id and version column
  select(-id, -version)

## Create a data set for batmobile ("7784-1") and batwing ("70916-1") using their set_num ----
batmobile <- inventory_parts_joined %>%
  filter(set_num == "7784-1" ) %>%
  select(-set_num)

batwing <- inventory_parts_joined %>%
  filter(set_num == "70916-1" ) %>%
  select(-set_num)

# Recap on Joining Tables ----

# Left Join: keep all observation of batmobile
left_joining <- batmobile %>%
  left_join(batwing, by = c("part_num", "color_id"), suffix = c("_batmobile", "_batwing"))

# Right Join: keep all observation at batwing
right_joining <- batmobile %>%
  right_join(batwing, by = c("part_num", "color_id"), suffix = c("_batmobile", "_batwing"))

# Right Join: keep all observation at batwing
full_joining <- batmobile %>%
  full_join(batwing, by = c("part_num", "color_id"), suffix = c("_batmobile", "_batwing"))
