# Introduction to Data Visualization with ggplot2 ----

## comparing aesthetics ----

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
# Using mtcars, create a plot base layer, plt_mpg_vs_wt. Map mpg onto y and wt onto x. Add a point layer, mapping the categorical no. of cylinders, fcyl, onto size.
# Establish the base layer
plt_mpg_vs_wt <- ggplot(mtcars, aes(wt, mpg))

# Map fcyl to size into geom_point
plt_mpg_vs_wt + geom_point(aes(size = fcyl))

# Code 2 ----
# Change the mapping. This time fcyl should be mapped onto alpha.
# Base Layer
plt_mpg_vs_wt <- ggplot(mtcars, aes(wt, mpg))

# Map fcyl to alpha, not size
plt_mpg_vs_wt + geom_point(aes(alpha = fcyl))

# Code 3 ----
# Change the mapping again. This time fcyl should be mapped onto shape.
# Base Layer
plt_mpg_vs_wt <- ggplot(mtcars, aes(wt, mpg))

# Map fcyl to alpha, not size
plt_mpg_vs_wt + geom_point(aes(shape = fcyl))

# Code 4 ----
# Swap the geom layer: change points to text. Change the mapping again. This time fcyl should be mapped onto label.
# Base layer
plt_mpg_vs_wt <- ggplot(mtcars, aes(wt, mpg))

# Use text layer and map fcyl to label
plt_mpg_vs_wt +
  geom_text(aes(label = fcyl))
