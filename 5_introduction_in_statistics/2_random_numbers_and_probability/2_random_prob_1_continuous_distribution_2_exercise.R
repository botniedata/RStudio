# Introduction to Statistics in R ----

## Continuous Distribution ----
# A continuous distribution is a probability distribution that deals with continuous random variables. Unlike discrete random variables, which can take on specific values (e.g., integers), continuous random variables can take on any value within a given range.

# The runif() function in R is used to generate random numbers from a uniform distribution. This means that each number within a specified range has an equal probability of being generated.
# Code:
# runif(n, min = 0, max = 1)

# Load packages ----
library(dplyr)
library(readr)
library(ggplot2)

# Restart Environment ----
rm(list = ls())

# Load data set ----
data <- read_csv("F:\\R\\dataset\\wait_times.csv")
wait_times <- data.frame(data)

# Scenario:
# To give Amir a better idea of how long he'll have to wait, you'll simulate Amir waiting 1000 times and create a histogram to show him what he should expect. Recall from the last exercise that his minimum wait time is 0 minutes and his maximum wait time is 30 minutes.

## Code ----
# Set random seed to 334
set.seed(334)

# Generate 1000 wait times between 0 and 30 mins, save in time column
wait_times %>%
  mutate(time = runif(1000, min = 0, max = 30)) %>%

# Create a histogram of simulated times
ggplot(aes(time)) +
  geom_histogram(bins = 30)

