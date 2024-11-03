# Joining Data with dplyr ----
## Visualize Difference ----
# Load packages ----
library(dplyr)
library(forcats)
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
colors <- read_csv("F:\\R\\dataset\\parts_inventory\\colors.csv")

# Data set as inventory_part_themes
inventory_parts_themes <- inventories %>%
  inner_join(inventory_parts, by = c("id" = "inventory_id")) %>%
  arrange(desc(quantity)) %>%
  select(-id, -version) %>%
  inner_join(sets, by = "set_num") %>%
  inner_join(themes, by = c("theme_id" = "id"), suffix = c("_set", "_theme"))

# Aggregating sets ----
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

# Combining sets: batman_colors and star_wars_colors
colors_joined <- batman_colors %>%
  full_join(star_wars_colors, by = "color_id", suffix = c("_batman", "_star_wars")) %>%
  replace_na(list(total_batman = 0, total_star_wars = 0)) %>%
  inner_join(colors, by = c("color_id" = "id")) %>%
  mutate(difference = fraction_batman - fraction_star_wars,
         total = total_batman + total_star_wars) %>%
  filter(total >= 200)

color_palette <- setNames(colors_joined$rgb, colors_joined$name)

# Create a bar plot using colors_joined and the name and difference columns
ggplot(colors_joined, aes(x = name, y = difference, fill = name)) +
  geom_col() +
  coord_flip() +
  scale_fill_manual(values = color_palette, guide = "none") +
  labs(y = "Difference: Batman - Star Wars")

