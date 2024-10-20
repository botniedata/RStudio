# Introduction to the Tidyverse ----
## ggplot2 visualization ----
# group_by() is a fundamental function in R, often used with summarize() from the dplyr package, to group data based on specific variables. This allows you to perform calculations or analysis on different subsets of your data.

# Loading packages (gapminder dataset, dplyr manipulate, ggplot visualization)
library(gapminder)
library(dplyr)
library(ggplot2)

# Restarting Environment
rm(list = ls())

### Code ----
# Perform per year the summarized mean life expectancy and total sum of population
gapminder %>%
  group_by(year) %>%
  summarize(meanLifeExp = mean(lifeExp),
            totalPop = sum(pop))

# Perform per continent on year 2007 the summarized mean life expectancy and total population
gapminder %>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarize(meanLifeExp = mean(lifeExp),
            totalPop = sum(pop))

# Perform summarizing by continent and year their total population and mean life expectancy
gapminder %>%
  group_by(year, continent) %>%
  summarize(totalPop = sum(pop),
            meanLifeExp = mean(lifeExp))

# Find median life expectancy and maximum GDP per Capita in each year
gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))

# Find median life expectancy and maximum GDP per capita in each continent in 1957
gapminder %>%
  filter(year == 1957) %>%
  group_by(continent) %>%
  summarize(medianLifeExp = median(lifeExp),
            max(gdpPercap))

# Find median life expectancy and maximum GDP per capita in each continent/year combination
gapminder %>%
  group_by(continent, year) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPerCap = max(gdpPercap))