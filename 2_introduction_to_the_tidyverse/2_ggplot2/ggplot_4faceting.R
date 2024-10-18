# Introduction to the Tidyverse ----
## ggplot2 visualization ----
# Faceting in ggplot2: Creating Subplots
# Faceting in ggplot2 is a powerful technique for creating multiple subplots based on different categories within your dataset. It helps to visualize how a variable changes across different groups or levels.

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
# Displaying the relationship between population and Life Expediency for the year 1992 on a log scale on x-axis, faceted by continent
ggplot(gapminder_1952, aes(x= pop, y = lifeExp)) +
  geom_point() +
  scale_x_log10() +
  facet_wrap(~ continent) # ~ or tilde can expressed as 'by'

# Scatter plot comparing gdpPercap and lifeExp, with color representing continent and size representing popupation, faceted by year
ggplot(gapminder, aes(x = gdpPercap, y = lifeExp, color = continent, size = pop)) +
  geom_point() +
  scale_x_log10() +
  facet_wrap(~ year)

