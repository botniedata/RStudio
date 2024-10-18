# Introduction to the Tidyverse ----
## ggplot2 visualization aesthetic color and size ----
# ggplot2 is a popular R package for creating elegant and customizable graphics. It follows a grammar of graphics approach, which allows you to build plots layer by layer, making it highly flexible and adaptable to various data visualization needs.

# Loading packages (gapminder dataset, dplyr manipulate, ggplot visualization)
library(gapminder)
library(dplyr)
library(ggplot2)

# Restarting Environment
rm(list = ls())

# Assigning 1952 dataset
gapminder_1952<- gapminder %>%
  filter(year == 1952)

### Code ----
# Displaying the relationship between population and Life Expediency for the year 1992 on a log scale on x-axis with aesthetic color of continent and size of gdpPercap
ggplot(gapminder_1952, aes(x= pop, y = lifeExp, color = continent, size = gdpPercap)) +
  geom_point() +
  scale_x_log10()
