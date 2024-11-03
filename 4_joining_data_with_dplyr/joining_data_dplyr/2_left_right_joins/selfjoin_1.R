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
themes <- read_csv("F:\\R\\dataset\\themes.csv")

# Code ----
# Warning message:
# In inner_join(., themes, by = c(id = "parent_id"), suffix = c("_parent",  :
# Detected an unexpected many-to-many relationship between `x` and `y`.
# ℹ Row 1 of `x` matches multiple rows in `y`.
# ℹ Row 1 of `y` matches multiple rows in `x`.
# ℹ If a many-to-many relationship is expected, set `relationship = "many-to-many"` to silence this warning.

  #Inner join the themes table by itself (self join)
  df_joined <- themes %>%
    inner_join(themes, by = c("id" = "parent_id"), suffix = c("_parent", "_child")) %>%
  
  # Filter for the "Harry Potter" parent name
  filter(name_parent == "Harry Potter")

