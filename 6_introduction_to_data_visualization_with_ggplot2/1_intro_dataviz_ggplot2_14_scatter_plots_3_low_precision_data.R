# Introduction to Data Visualization with ggplot2 ----

## scatter plots ----

# Restart Environment ----
rm(list = ls())

# Load library ----
#install.packages("tidyverse")
library(tidyverse)
library(readr)
library(ggplot2)

# Data structure ----
str(mtcars)

# Data Manipulation ----
mtcars <- mtcars %>%
  mutate(fcyl = factor(cyl))

mtcars <- mtcars %>%
  mutate(fam = factor(am,
                      levels = c(0, 1),
                      labels = c(0, 1)))

# Plot #1 ----
ggplot(iris, aes(Sepal.Length,
                 Sepal.Width,
                 color = Species)) +
  # Swap for jitter layer with width 0.1
  geom_jitter(alpha = 0.5,
              width = 0.1)

# Plot #2 ----
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  # Set the position to jitter
  geom_point(position = "jitter", alpha = 0.5)

# Plot #3 ----
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  # Set the position to jitter
  geom_point(alpha = 0.5, position = position_jitter(width = 0.1))

