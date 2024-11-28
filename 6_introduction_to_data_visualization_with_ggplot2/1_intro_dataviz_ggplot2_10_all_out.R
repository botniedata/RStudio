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

mtcars <- mtcars %>%
          mutate(fam = factor(am,
                              levels = c(1, 0),
                              labels = c("automatic", "manual")))

# Code 1 ----
# Use mtcars to draw a plot of qsec vs. mpg, colored by fcyl. Add a point layer.
ggplot(mtcars, aes(mpg, qsec, color = fcyl)) +
  geom_point()

# Code 2 ----
# Add another aesthetic: map fam onto shape.
ggplot(mtcars, aes(mpg, qsec, color = fcyl, shape = fam)) +
  geom_point()

# Code 3 ----
# Add another two aesthetics: map hp divided by wt onto size.
# 5 aesthetics: add a mapping of size to hp / wt
ggplot(mtcars, aes(mpg, qsec, color = fcyl, shape = fam, size = hp/wt)) +
  geom_point()

