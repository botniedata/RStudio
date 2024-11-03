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
inventory_parts <-read_csv("F:\\R\\dataset\\parts_inventory\\inventory_parts.csv")
sets <-read_csv("F:\\R\\dataset\\parts_inventory\\sets.csv")
themes <-read_csv("F:\\R\\dataset\\themes.csv")

# Data set as inventory_part_themes
inventory_parts_themes <- inventories %>%
  inner_join(inventory_parts, by = c("id" = "inventory_id")) %>%
  arrange(desc(quantity)) %>%
  select(-id, -version) %>%
  inner_join(sets, by = "set_num") %>%
  inner_join(themes, by = c("theme_id" = "id"), suffix = c("_set", "_theme"))

## Code ----
# Filter and aggregate the Batman set data; add a fraction column
batman_colors <- inventory_parts_themes %>%
  # Filter the inventory_parts_themes table for the Batman theme
  filter(name_theme == "Batman") %>%
  group_by(color_id) %>%
  summarize(total = sum(quantity)) %>%
  # Add a fraction column of the total divided by the sum of the total 
  mutate(fraction = total / sum(total))

# Filter and aggregate the Star Wars set data; add a fraction column
star_wars_colors <- inventory_parts_themes %>%
  filter(name_theme == "Star Wars") %>%
  group_by(color_id) %>%
  summarize(total = sum(quantity)) %>%
  mutate(fraction = total / sum(total))
