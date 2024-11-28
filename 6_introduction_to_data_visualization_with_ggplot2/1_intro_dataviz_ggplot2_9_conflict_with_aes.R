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
# Add a point layer, setting alpha, the transparency, to 0.5
ggplot(mtcars, aes(wt, mpg, color = fcyl)) +
  geom_point(alpha = 0.5) +

# code 2 ----
# Add a text layer, setting the label to the rownames of the dataset mtcars, and the color to "red".
ggplot(mtcars, aes(wt, mpg, color = fcyl)) +
  # Add text layer with label rownames(mtcars) and color red
  geom_text(label = rownames(mtcars), color = "red")

# Code 3 ----
# Add a point layer, setting the shape to 24 and the color to "yellow".
ggplot(mtcars, aes(wt, mpg, color = fcyl)) +
  # Add points layer with shape 24 and color yellow
  geom_point(shape = 24, color = "yellow")