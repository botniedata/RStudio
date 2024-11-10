# Introduction to Statistics in R ----

## Continuous Distribution ----
# A continuous distribution is a probability distribution that deals with continuous random variables. Unlike discrete random variables, which can take on specific values (e.g., integers), continuous random variables can take on any value within a given range.

# In R, the punif() function calculates the cumulative distribution function (CDF) of a uniform distribution. This function is particularly useful when you want to determine the probability that a random variable from a uniform distribution is less than or equal to a specific value.

# q: The value at which to evaluate the CDF.
# min: The lower limit of the uniform distribution (default is 0).
# max: The upper limit of the uniform distribution (default is 1).
# lower.tail: A logical value indicating whether to calculate the probability P(X ≤ q) (default is TRUE). If FALSE, it calculates P(X > q).

# Code:
# punif(q, min = 0, max = 1, lower.tail = TRUE)

# Load packages ----
library(dplyr)
library(readr)
library(ggplot2)

# Restart Environment ----
rm(list = ls())

## Code ----
# To model how long Amir will wait for a back-up using a continuous uniform distribution, save his lowest possible wait time as min and his longest possible wait time as max. Remember that back-ups happen every 30 minutes.
# Min and max wait times for back-up that happens every 30 min
min <- 0
max <- 30

# Calculate the probability that Amir has to wait less than 5 minutes, and store in a variable called prob_less_than_5.
# Calculate probability of waiting less than 5 mins
prob_less_than_5 <- punif(5, min, max)
prob_less_than_5
  
# Calculate probability of waiting more than 5 mins
prob_greater_than_5 <- punif(5, min, max, lower.tail = FALSE)
prob_greater_than_5

# Calculate probability of waiting 10-20 mins
prob_between_10_and_20 <- punif(20, min, max) - punif(10, min, max)
prob_between_10_and_20

  


