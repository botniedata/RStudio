# Introduction to Data Visualization with ggplot2 ----

## using attributes----

# Restart Environment ----
rm(list = ls())

# Load library ----
#install.packages("tidyverse")
library(tidyverse)
library(readr)
library(ggplot2)

# Data Manipulation -----
# set am into factor name as fam
mtcars <- mtcars %>%
  mutate(fam = factor(am,
                      levels = c(0, 1),
                      labels = c("automatic", "manual")))

# set cyl into factor name as fcyl
mtcars <- mtcars %>%
  mutate(fcyl = factor(cyl))

# Code #1 ----
ggplot(mtcars, aes(fcyl, fill = fam)) +
  geom_bar() +
  # Set the axis labels
  labs(x = "Number of Cylinders",   # set x-axis label to "Number of Cylinders"
       y = "Count")                # set x-axis label to "Count"

# Code #2 ----

palette <- c(automatic = "#377EB8", manual = "#E41A1C")

ggplot(mtcars, aes(fcyl, fill = fam)) +
  geom_bar() +
  # Set the axis labels
  labs(x = "Number of Cylinders",
       y = "Count") + 
  
  # Implement a custom fill color scale to "Transmission" and values to palette
  scale_fill_manual("Transmission", values = palette)

# Code #3 ----
# Modify the code to set the position to dodge so that the bars for transmissions are displayed side by side.

palette <- c(automatic = "#377EB8", manual = "#E41A1C")

# Set the position
ggplot(mtcars, aes(fcyl, fill = fam)) +
  geom_bar(position = "dodge") +
  labs(x = "Number of Cylinders", y = "Count")
scale_fill_manual("Transmission", values = palette)


                
