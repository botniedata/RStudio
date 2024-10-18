# Introduction to the Tidyverse ----
## ggplot2 visualization ----
# Aggregating Data - summarize() is a powerful function in R, often used with group_by() from the dplyr package, to aggregate data into summary statistics. It allows you to calculate various metrics such as mean, median, sum, minimum, maximum, standard deviation, and more.

# Loading packages (gapminder dataset, dplyr manipulate, ggplot visualization)
library(gapminder)
library(dplyr)
library(ggplot2)

# Restarting Environment
rm(list = ls())

### Code ----
# Summarize to find the median life expectancy
gapminder %>%
  summarize(medianLifeExp = median(lifeExp))

# Filter for 1957 then summarize the median life expectancy
gapminder %>%
  filter(year == 1957) %>%
  summarize(medianLifeExp = median(lifeExp))

# Filter for 1957 then summarize the median of life expectancy and the maximum GDP per Capita
gapminder %>%
  filter(year == 1957) %>%
  summarize(medianLifeExp = median(lifeExp), maxGdpPercap = max(gdpPercap))
