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

# Edit this to map color to clarity,
# Assign the updated plot to a new object
plt_price_vs_carat_by_clarity <- plt_price_vs_carat + geom_point(
                                                        aes(color = clarity)
                                                                  )

# See the plot
plt_price_vs_carat_by_clarity