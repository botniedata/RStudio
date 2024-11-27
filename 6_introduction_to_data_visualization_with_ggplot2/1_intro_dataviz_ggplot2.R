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

# Execute commands
ggplot(mtcars, aes(cyl, mpg)) +   # contains 5 and 7 in cyl
  geom_point()


# Code 2 Revised----
# Change the command below so that cyl is treated as factor
ggplot(mtcars, aes(factor(cyl), mpg)) + # factor(cyl) remove 5 and 7 in cyl
  geom_point()



