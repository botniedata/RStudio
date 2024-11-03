# Joining Data with dplyr ----
## full_join() verb----
# full_join() function in R's dplyr package is a powerful tool for combining data frames. It performs a full outer join, which preserves all rows from both data frames, whether they have a matching row in the other or not.

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
# Data sets 
sets <- read_csv("F:\\R\\dataset\\parts_inventory\\sets.csv")
colors <- read_csv("F:\\R\\dataset\\parts_inventory\\colors.csv") # added
parts <- read_csv("F:\\R\\dataset\\parts_inventory\\parts.csv") # added
themes <- read_csv("F:\\R\\dataset\\themes.csv")

## Filtering Data frame ----
# Create a Data frame as inventory_parts_joined as inner_join of inventories and inventory_parts
inventory_parts_joined <- inventories %>%
  # Inner join inventories and inventory_parts using id and inventory_id
  inner_join(inventory_parts, by = c("id" = "inventory_id")) %>%
  # Arrange the quantity in descending order
  arrange(desc(quantity)) %>%
  # Remove in selection the id and version column
  select(-id, -version)

# inventory_sets_themes data frame joining inventory_parts_joined, sets and themes table
inventory_sets_themes <- inventory_parts_joined %>%
  inner_join(sets, by = "set_num") %>%
  inner_join(themes, by = c("theme_id" = "id"), suffix = c("_set", "_theme"))

# Save as batman by filtering name_theme = "Batman"
batman <- inventory_sets_themes %>%
  filter(name_theme == "Batman")
# Save as starwars by filtering name_theme = "Star Wars"
star_wars <- inventory_sets_themes %>%
  filter(name_theme == "Star Wars")
# Count the part number and color id, weight by quantity
batman_parts <- batman %>%
  count(part_num, color_id, wt = quantity)
star_wars_parts <- star_wars %>%
  count(part_num, color_id, wt = quantity)
parts_joined <- batman_parts %>%
  # Combine the star_wars_parts table
  full_join(star_wars_parts, by = c("part_num", "color_id"), suffix = c("_batman", "_star_wars")) %>%
  replace_na(list(n_batman = 0,
                  n_star_wars = 0))

# Code ----
# Comparing Batman and Star Wars LEGO parts
comparing_lego_parts <- parts_joined %>%
  # Sort the number of star wars pieces in descending order
  arrange(desc(n_star_wars)) %>%
  # Join the colors table to the parts_joined table
  inner_join(colors, by = c("color_id" = "id")) %>%
  # Join the parts table to the previous join
  inner_join(parts, by = "part_num", suffix = c("_color", "_part"))
