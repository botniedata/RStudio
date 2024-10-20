# Introduction to the Tidyverse ----
## Types of Visualizations ----
# The lineplot() function is not a built-in function in base R. However, it is a common visualization technique that can be created using various R packages.

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

### Graph
# Createa line plot showing GDP per Capita changing overtime
ggplot(by_year, aes(x = year, y = mediaGDPPerCap)) + 
  geom_line() +
  expand_limits(y = 0)




