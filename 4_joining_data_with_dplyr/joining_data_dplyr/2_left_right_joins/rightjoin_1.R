# Joining Data with dplyr ----
## right_join() verb ----
# right_join() function from the dplyr package is used to perform a right outer join. This type of join keeps all rows from the right data frame, even if there are no matching rows in the left da

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
parts <- read_csv("F:\\R\\dataset\\parts.csv")
part_categories <- read_csv("F:\\R\\dataset\\part_categories.csv")

# Code ----
  # Count the part_cat_id
  x <- parts %>%
    count(part_cat_id, sort = TRUE) %>%

  # Right join part_categories
  right_join(part_categories, by = c("part_cat_id" = "id")) %>%
  
  # Filter for NA
  #filter(is.na(n)) %>% # uncomment this to display NA values

  # Use replace_na  to replace  missing values in the column
  replace_na(list(n = 0))
  
  print(x)

