# Introduction to the Tidyverse ----
## ggplot2 visualization ----
# group_by() is a fundamental function in R, often used with summarize() from the dplyr package, to group data based on specific variables. This allows you to perform calculations or analysis on different subsets of your data.

# Loading packages (gapminder dataset, dplyr manipulate, ggplot visualization)
library(gapminder)
library(dplyr)
library(ggplot2)

# Restarting Environment
rm(list = ls())

### Code (Median Life Expectancy each year) ----
by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))
### Graph
ggplot(by_year, aes(x = year, y = medianLifeExp)) +
  geom_point() +
  expand_limits(y = 0)

### Code (median GDP per Capita within the continent each year) ----
by_year_continent <- gapminder %>%
  group_by(continent, year) %>%
  summarize(medianGdpPerCap = median(gdpPercap))

### Graph (Plot the change in medianGDPperCap in each continent over time)
ggplot(by_year_continent, aes(x = year, y = medianGdpPerCap, color = continent)) +
  geom_point() +
  expand_limits(y = 0)

### Code (median GDP per Capita and Life Expectancy per continent in 2007) ----
by_continent_2007 <- gapminder%>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarize(medianGDPPerCap = median(gdpPercap),
            medianLifeExp = median(lifeExp))

### Graph
ggplot(by_continent_2007, aes(x = medianGDPPerCap,
                              y = medianLifeExp,
                              color = continent)) +
  geom_point() +
  expand_limits(y = 0)



