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
sets <- read_csv("F:\\R\\dataset\\parts_inventory\\sets.csv")

# Code ----
# Use filter() to extract version 1 
version_1_inventories <- inventories %>%
  filter(version == 1)

# Use anti_join() to find which set is missing a version 1
anti_sets_ver1 <- sets %>% 
  anti_join(version_1_inventories, by = "set_num")
