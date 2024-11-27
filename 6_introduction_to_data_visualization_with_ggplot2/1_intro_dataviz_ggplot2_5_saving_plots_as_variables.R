# Introduction to Data Visualization with ggplot2 ----

## ggplot2 layers ----

# Restart Environment ----
rm(list = ls())

# Load library ----
#install.packages("tidyverse")
library(tidyverse)
library(readr)
library(ggplot2)

# Load data set ----
diamonds

# Code 1 ----
# Explore the diamonds data frame with str()
str(diamonds)

# Plot data
ggplot(diamonds, aes(carat, price, color = clarity)) + # adding color = clarity 
  geom_point(alpha = 0.4) + # make point translucent setting alpha = 0.4
  geom_smooth()

# Note: geom_point() and geom_smooth() is good combination.

