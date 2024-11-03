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
colors <- read_csv("F:\\R\\dataset\\parts_inventory\\colors.csv")
inventory_parts <- read_csv("F:\\R\\dataset\\parts_inventory\\inventory_parts.csv")

# Code ----
# Use inventory_parts to find colors included in at least one set
colors_semi <- colors %>%
  semi_join(inventory_parts, by = c("id" = "color_id"))

