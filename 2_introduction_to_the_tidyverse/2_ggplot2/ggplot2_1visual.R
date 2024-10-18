# Introduction to the Tidyverse ----
## ggplot2 visualization ----
# ggplot2 is a popular R package for creating elegant and customizable graphics. It follows a grammar of graphics approach, which allows you to build plots layer by layer, making it highly flexible and adaptable to various data visualization needs.

# Loading packages
library(gapminder)
library(dplyr)

# Load ggplot2
library(ggplot2)

# Restarting Environment
rm(list = ls())

# Assigning 1952 dataset
gapminder_1952<- gapminder %>%
  filter(year == 1952)

### Code ----
# Displaying the relationship between population and GDP per Capita for the year 1952.
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) +
  geom_point()

# Displaying the relationship between population and Life Expentency for the year 1992
ggplot(gapminder_1952, aes(x= pop, y = lifeExp)) +
  geom_point()
