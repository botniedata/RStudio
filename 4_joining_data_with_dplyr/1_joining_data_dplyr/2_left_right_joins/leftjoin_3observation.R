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
inventories <- read_csv("F:\\R\\dataset\\parts_inventory\\inventories.csv")
sets <- read_csv("F:\\R\\dataset\\parts_inventory\\sets.csv")


# filter inventories version is 1 ----
inventory_version_1 <- inventories %>%
  filter(version == 1)

# check the overview of the data frame
glimpse(sets)
glimpse(inventory_version_1)

# the column with same value is "set_num" will be used for left_join

# Join versions to sets
sets %>%
  left_join(inventory_version_1, by = "set_num") %>%
  
# Filter for where version is NA
  filter(is.na(version))
