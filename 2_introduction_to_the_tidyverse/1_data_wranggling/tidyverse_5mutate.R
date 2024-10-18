# Introduction to the Tidyverse ----
## mutate() verb ----
# mutate() verb in R is used to create new columns or modify existing columns in a data frame. It takes a data frame as input and returns a new data frame with the added or modified columns.

# Loading packages
library(gapminder)
library(dplyr)

# Restarting Environment
rm(list = ls())

# gapminder dataset
gapminder

### Code ----
# Combining verbs
gapminder %>%
  mutate(gdp = gdpPercap * pop) %>%
  filter(year == 2007) %>%
  arrange(desc(gdp))
