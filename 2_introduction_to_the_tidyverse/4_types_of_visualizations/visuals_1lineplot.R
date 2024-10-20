# Introduction to the Tidyverse ----
## Types of Visualizations ----
# The geom_line() function in R is used to create line charts, which are a type of graphical representation that display data as connected points. Line charts are often used to visualize trends or patterns over time or other continuous variables.

# Loading packages (gapminder dataset, dplyr manipulate, ggplot visualization)
library(gapminder)
library(dplyr)
library(ggplot2)

# Restarting Environment
rm(list = ls())

### Code ----
# Summarize the median GDP per Capita by year
by_year <- gapminder %>%
  group_by(year) %>%
  summarize(mediaGDPPerCap = median(gdpPercap))

# Graph
# Create a line plot showing GDP per Capita changing overtime
ggplot(by_year, aes(x = year, y = mediaGDPPerCap)) + 
  geom_line() +
  expand_limits(y = 0)

# Summarize the median GDP per Capita by year and continent
by_year_continent <- gapminder %>%
  group_by(continent, year) %>%
  summarize(medianGDPPerCap = median(gdpPercap))

# Graph
ggplot(by_year_continent, aes(x = year, y = medianGDPPerCap, color = continent)) +
  geom_line() +
  expand_limits(y = 0)




