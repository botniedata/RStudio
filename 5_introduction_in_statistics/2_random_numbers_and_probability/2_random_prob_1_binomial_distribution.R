# Introduction to Statistics in R ----

## Binomial Distribution ----
# A binomial distribution is a discrete probability distribution that describes the number of successes in a fixed number of Bernoulli trials. A Bernoulli trial is a random experiment with only two possible outcomes: success or failure.
# Probability distribution of the number of success in a sequence of indepedent trials

# Load packages ----
library(dplyr)
library(readr)
library(ggplot2)

# Restart Environment ----
rm(list = ls())

# Load data set ----

## Code ----
# The rbinom() function in R is used to generate random numbers from a binomial distribution.
# rbinom(number of success, nummber of trials, probability of success on each trial in rate (%))
# rbinom(n, size, prob)

# Set random seed to 10
set.seed(10)

# Simulate a single deal in a week with 30% chance
rbinom(1, 1, 0.30)

# Simulate a single deal in a week with 30% chance
rbinom(1, 3, 0.30)

# Simulate 52 weeks of 3 deals
deals <- rbinom(52, 3, 0.30)
# Calculate mean deals won per week
mean(deals)

# -*-
# The dbinom() function in R is used to calculate the probability mass function (PMF) of a binomial distribution.
# dbinom(number of success, nummber of trials, probability of success on each trial in rate (%))
# dbinom(n, size, prob)

# Probability of closing 3 out of 3 deals
dbinom(3, 3, 0.30)

# -*-
# The pbinom() function in R is used to calculate the cumulative distribution function (CDF) of a binomial distribution. It gives the probability of getting a number of successes less than or equal to a specific value in a fixed number of trials.
# pbinom(n, size, prob, lower.tail = TRUE)

# Probability of closing <= 1 deal out of 3 deals
pbinom(1, 3, 0.30, lower.tail = TRUE)

# Probability of closing > 1 deal out of 3 deals
pbinom(1, 3, 0.30, lower.tail = FALSE)

# Expected number won with 30% win rate
won_30pct <- 3 * 0.30
won_30pct

# Expected number won with 25% win rate
won_25pct <- 3 * 0.25
won_25pct

# Expected number won with 35% win rate
won_35pct <- 3 * 0.35
won_35pct
