# Introduction to Statistics in R ----

## Probability Distribution ----
# Describes the probability of each possible outcome in a scenario
#
#   •       ••      •••     ••••      •••••     ••••••
#   1/6     1/6     1/6     1/6       1/6       1/6
#
# Expected value: mean of probability distribution
#
# Expected value of a fair die roll:
#
#       1	        1		      1	        1	        1	    	  1	 	
#   1 x -  +  2 x -  +  3 x -  +  4 x -  +  5 x -  +  6 x -   = 3.5
#       6         6         6         6         6         6

# Probability = area
#
# P(die roll) ≤ 2 = 1/3
#
#    1/6  +  1/6
#       = 1/3
#  _______________________________________________
# |   1   |   2   |   3   |   4   |   5   |   6   |
# ------------------------------------------------

# Uneven die
#
#   •       ••• | •••     ••••      •••••     ••••••
#   1/6        1/3        1/6        1/6      1/6
#
#       1	       		        1	        1	        1		      1	 	
#   1 x -  +  2 x 0  +  3 x -  +  4 x -  +  5 x -  +  6 x -   = 3.67
#       6                   6         6         6         6
#
#                  _______
#  _______        |       |_______________________
# |   1   |       |   3   |   4   |   5   |   6   |
# ------------------------------------------------

# Law of Large Numbers:
# As the size of your sample increase, the sample mean will approach the expect value


# Load packages ----
library(dplyr)
library(readr)
library(ggplot2)

# Restart Environment ----
rm(list = ls())

# Load data frame ----
# Data set
vector_die <- c(1, 2, 3, 4 , 5, 6)
die <- data.frame(n = vector_die)

# Mean of a die
mean(die$n)

# sample roll 10 times, 100 times and 1000 times
# Roll 10 times
rolls_10 <- die %>%
  sample_n(10, replace = TRUE)
# Roll 10 times
rolls_100 <- die %>%
  sample_n(100, replace = TRUE)
# Roll 10 times
rolls_1000 <- die %>%
  sample_n(1000, replace = TRUE)

mean_die <- mean(die$n)
mean_10 <- mean(rolls_10$n)
mean_100 <- mean(rolls_100$n)
mean_1000 <- mean(rolls_1000$n)

roll_number <- data.frame(sample_size = c(6, 10, 100 , 1000),
                          mean = c(mean_die ,mean_10, mean_100, mean_1000))
roll_number


# Visualize a sample
ggplot(rolls_10, aes(n)) +
  geom_histogram(bins = 6)


