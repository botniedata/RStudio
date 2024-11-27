# Introduction to Data Visualization with ggplot2 ----

## using attributes----

# Restart Environment ----
rm(list = ls())

# Load library ----
#install.packages("tidyverse")
library(tidyverse)
library(readr)
library(ggplot2)

# Data Manipulation
mtcars <- mtcars %>% 
          mutate(fcyl = factor(cyl))

# Code 1 ----
# A hexadecimal color
my_blue <- "#4ABEFF"

ggplot(mtcars, aes(wt, mpg)) +
  geom_point(color = my_blue, alpha = 0.6)

# Code 2 ----
# Change the color mapping to a fill mapping
# Change the color mapping to a fill mapping. That is, fcyl should be mapped onto fill. Set the color of the points to my_blue, point size to 10 and the point shape to 1.

# Change the color mapping to a fill mapping
ggplot(mtcars, aes(wt, mpg, fill = fcyl)) +
  # Set point color, size and shape
  geom_point(color = my_blue, size = 10, shape = 1)