# Introduction to Statistics in R ----

## exponential distribution ----
# probability of time between Poisson events
# examples:
# probability of > 1 day between adoptions
# probability of < 10 minutes between restaurant arrival
# probability of 6-8 months between earthquakes

# Also uses lambda (rate)
# Continuous (time)

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


