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

# Load CSV --
themes <- read_csv("F:\\R\\dataset\\themes.csv")

# Code ----


