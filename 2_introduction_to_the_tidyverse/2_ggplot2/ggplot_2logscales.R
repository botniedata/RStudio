# Introduction to the Tidyverse ----
## ggplot2 visualization ----
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
# Displaying the relationship between population and Life Expediency for the year 1992 on a log scale on x-axis.
ggplot(gapminder_1952, aes(x= pop, y = lifeExp)) +
  geom_point() +
  scale_x_log10()

# Displaying the relationship between population and GDP per Capita for the year 1992 on a log scale on x-axis and y-axis.
ggplot(gapminder_1952, aes(x= pop, y = gdpPercap)) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10()
