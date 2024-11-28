# Introduction to Data Visualization with ggplot2 ----

## using attributes----

# Restart Environment ----
rm(list = ls())

# Load library ----
#install.packages("tidyverse")
library(tidyverse)
library(readr)
library(ggplot2)

# Code ----
# Plot 0 vs mpg
ggplot(mtcars, aes(mpg, 0))+
  geom_jitter() + # add position to jitter.

# Set the y-axis limits
  ylim(-2, 2) # Set limits ylim(lo, hi) or ylim(c(lo, hi))

                

  