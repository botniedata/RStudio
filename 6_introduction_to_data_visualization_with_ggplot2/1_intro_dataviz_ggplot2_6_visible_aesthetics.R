# Introduction to Data Visualization with ggplot2 ----

## visible aesthetic ----
# Aesthetic   |   Description
# x           |   X axis Position
# y           |   Y axis Position
# fill        |   fill color
# color       |   color of points, outlines of other geoms
# size        |   area of radius of points, thickness of lines
# alpha       |   transparency
# linetype    |   line dash pattern
# labels      |   text on a plot or axes
# shape       |   shape of a point

# Restart Environment ----
rm(list = ls())

# Load library ----
#install.packages("tidyverse")
library(tidyverse)
library(readr)
library(ggplot2)

# Load data set ----
mtcars

# Data manipulation ----
mtcars <- mtcars %>%
  mutate(fcyl = factor(cyl))

mtcars <- mtcars %>%
  mutate(fam = factor(mtcars$am,
                      levels = c(1, 0),
                      labels = c("automatic", "manual")))
  
# Code ----
ggplot(mtcars, aes(mpg, fcyl)) +
  geom_point()

# Swap mpg and fcyl
ggplot(mtcars, aes(fcyl, mpg)) +
  geom_point()

# Map x to wt, y to mpg and color to fcyl
ggplot(mtcars, aes(wt, mpg, color = fcyl)) +
  geom_point()

# Modify
ggplot(mtcars, aes(wt, mpg, color = fcyl)) +
  geom_point(shape = 1, size = 4)

# Map fcyl to fill
ggplot(mtcars, aes(wt, mpg, fill = fcyl)) +
  geom_point(shape = 1, size = 4)

# Modify shape to 21 and add an alpha to 0.6
ggplot(mtcars, aes(wt, mpg, fill = fcyl)) +
  geom_point(shape = 21, size = 4, alpha = 0.6)

# Map color to fam
ggplot(mtcars, aes(wt, mpg, fill = fcyl, color = fam)) +
  geom_point(shape = 21, size = 4, alpha = 0.6)
