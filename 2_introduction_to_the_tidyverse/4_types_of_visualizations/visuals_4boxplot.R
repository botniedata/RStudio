# Introduction to the Tidyverse ----
## Types of Visualizations ----
# The geom_boxplot() function in R is used to create box plots, which are a type of graphical representation that summarize the distribution of a numerical variable. Box plots show the median, quartiles, and potential outliers of the data.


# Components of a box plot:
# • Median: A line within the box representing the middle value of the data.
# • Quartiles: The edges of the box represent the first quartile (Q1) and the third quartile (Q3).
# • Interquartile range (IQR): The distance between Q1 and Q3, which represents the middle 50% of the data.
# • Whiskers: Lines extending from the box to the minimum and maximum values excluding outliers.
# • Outliers: Data points that lie outside of the whiskers, typically defined as values that are more than 1.5 times the IQR away from the nearest quartile.



# Loading packages (gapminder dataset, dplyr manipulate, ggplot visualization)
library(gapminder)
library(dplyr)
library(ggplot2)

# Restarting Environment
rm(list = ls())

### Code ----
# Create a dataset for 1952 comparing GDP per Capita among continents.
gapminder_gdppercap_1952 <- gapminder %>%
  filter(year == 1952)

# Graph
ggplot(gapminder_gdppercap_1952, aes(x = continent, y = gdpPercap)) +

# Adding title to this graph
  ggtitle("Comparing GDP per capita across continents") +
  geom_boxplot() +
  scale_y_log10()


