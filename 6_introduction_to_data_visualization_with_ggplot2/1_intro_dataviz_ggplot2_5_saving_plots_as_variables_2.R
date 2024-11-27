# Introduction to Data Visualization with ggplot2 ----

## saving plots as variables ----

# Restart Environment ----
rm(list = ls())

# Load library ----
#install.packages("tidyverse")
library(tidyverse)
library(readr)
library(ggplot2)

# Load data set ----
diamonds

# Code ----
# Draw a ggplot
plt_price_vs_carat <- ggplot(   # saving ggplot as plt_price_vs_carat
  diamonds,                     # diamonds as dataset
  aes(carat, price)             # aesthetic x for carat and y for price
) 

# Edit this to make points 20% opaque: plt_price_vs_carat_transparent
plt_price_vs_carat_transparent <- plt_price_vs_carat + geom_point(alpha = 0.2)

# See the plot
plt_price_vs_carat_transparent