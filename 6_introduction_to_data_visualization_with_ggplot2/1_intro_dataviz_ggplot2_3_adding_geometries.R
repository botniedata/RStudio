# Introduction to Data Visualization with ggplot2 ----

## ggplot2 layers ----

# Restart Environment ----
rm(list = ls())

# Load data set ----
mtcars

# Load library ----
library(ggplot2)

# Code 1 ----

# Explore the mtcars data frame with str()
str(mtcars)

# Change the color aesthetic to a size aesthetic
ggplot(mtcars, aes(wt, mpg, color = disp, size = disp)) + # adding color and size argument
  geom_point()


