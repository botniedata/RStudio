# Introduction to R ----
## Data frames ----

# Data frames are one of the most fundamental data structures in R, providing a flexible way to store and manipulate tabular data. They are similar to spreadsheets, with rows representing observations and columns representing variables.

# Install package and load to print out mcars built-in data frame
install.packages("MASS")
library(MASS)

# For restarting environment
rm(list = ls())

# Print out built-in R data frame
mtcars

# Summarize mtcars
summary(mtcars)

