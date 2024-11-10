# Introduction to Statistics in R ----

## Normal Distribution ----
# Shape is commonly referred to as a "bell curve"
# Properties of a normal distribution, 
# • it's symmetrical (left side is mirror image of the right)
# • the area beneath the curve is equal to 1
# • probability never hits 0 (zero) - 0.006% of its area is contained beyond the edges of this graph

# Normal distribution (68-95-99.7 rule): 
# 68% of the area falls within 1 standard deviation
# 95% of the area falls within 2 standard deviation
# 99.7% of the area falls within 3 standard deviation

# Load packages ---- 
library(dplyr)
library(readr)
library(ggplot2)

# Restart Environment ----
rm(list = ls())

# Load data set ----

## Code ----
# Generate random heights
ten_heights <- rnorm(10, mean = 161, sd = 7)

# Shorter height than 154
pnorm(154, mean = 161, sd = 7) # 16% in height shorter than 154

# Taller height than 154
pnorm(154, mean = 161, sd = 7, lower.tail = FALSE)

# Get the rate (%) of height between 154 and 157
pnorm(157, mean = 161, sd = 7) - pnorm(154, mean = 161, sd = 7) # 12% of height between 157 to 157

# What height are 90% shorter than
qnorm(0.90, mean = 161, sd = 7) # the value is 169.97

# What height are 90% shorter than
qnorm(0.90, mean = 161, sd = 7, lower.tail = FALSE) # the value is 152.03



