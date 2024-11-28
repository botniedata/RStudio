# Introduction to Data Visualization with ggplot2 ----

## scatter plots ----

# Restart Environment ----
rm(list = ls())

# Load library ----
#install.packages("tidyverse")
library(tidyverse)
library(readr)
library(ggplot2)

# Plot #1 ----
# Plot price vs. carat, colored by clarity
plt_price_vs_carat_by_clarity <- ggplot(diamonds, 
                                        aes(carat, 
                                            price, 
                                            color = clarity))
# Add a point layer with tiny points (pixel = 1)
plt_price_vs_carat_by_clarity + geom_point(alpha = 0.5, shape = ".")

#Plot #2 ----
# Set the shape to 16
plt_price_vs_carat_by_clarity <- ggplot(diamonds, 
                                        aes(carat, 
                                            price, 
                                            color = clarity))
plt_price_vs_carat_by_clarity + geom_point(alpha = 0.5,
                                           shape = 16)