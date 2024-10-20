# Introduction to the Tidyverse ----
## Types of Visualizations ----
# The geom_col() function in R is used to create bar charts, similar to geom_bar(). However, geom_col() is specifically designed for bar charts where the x-axis values are already categorical or discrete. This means that the x-axis values are treated as identifiers rather than numerical values.

# Loading packages (gapminder dataset, dplyr manipulate, ggplot visualization)
library(gapminder)
library(dplyr)
library(ggplot2)

# Restarting Environment
rm(list = ls())

### Code ----
# Summarize the median GDP per Capita by continent in 1952
by_continent_1952 <- gapminder %>%
  filter(year == 1952) %>%
  group_by(continent) %>%
  summarize(medianGDPPerCap = median(gdpPercap))

# Graph
#
ggplot(by_continent_1952, aes(x = continent, y = medianGDPPerCap)) +
  geom_col()

# Filter for observation in the Oceania continent in 1952
oceania_1952 <- gapminder %>%
  filter(continent == "Oceania", year == 1952)
  
#Graph
# Create a bar plot of GDP per Capita by country
ggplot(oceania_1952, aes(x= country, y = gdpPercap)) +
  geom_col()