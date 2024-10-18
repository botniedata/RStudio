# Introduction to the Tidyverse ----
## filter() and arrange() verb ----

# Loading packages
library(gapminder)
library(dplyr)

# Restarting Environment
rm(list = ls())

# gapminder dataset
gapminder

### Code ----
# Filtering the arranging
gapminder %>%
  filter(year == 2007) %>%
  arrange(desc(gdpPercap))
