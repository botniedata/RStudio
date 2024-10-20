# Introduction to the Tidyverse ----
## Types of Visualizations ----
# The geom_histogram() function in R is used to create histograms, which are a type of graphical representation that display the distribution of a numerical variable. Histograms divide the range of the variable into intervals (bins) and then count the number of observations that fall within each bin.

# Loading packages (gapminder dataset, dplyr manipulate, ggplot visualization)
library(gapminder)
library(dplyr)
library(ggplot2)

# Restarting Environment
rm(list = ls())

### Code ----
# Create a dataset for 1952 shows the population
gapminder_pop_1952 <- gapminder %>%
  filter(year == 1952) %>%
  mutate(pop_by_mil = pop / 1000000)
  
# Graph
# Create a histogram of population (pop_by_mil)
ggplot(gapminder_pop_1952, aes(x = pop_by_mil)) +
  geom_histogram(bins = 50)

# Create a dataset for 1952 put into a log scale
gapminder_pop_1952 <- gapminder %>%
  filter(year == 1952)

# Graph
ggplot(gapminder_pop_1952, aes(x = pop)) +
  geom_histogram() +
  scale_x_log10()
