# Introduction to Statistics in R ----

## Probability Distribution ----
# Discrete Probability

# Load packages ----
library(dplyr)
library(readr)
library(ggplot2)

# Restart Environment ----
rm(list = ls())

# Load data frame ----
group_id <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")
group_size <- c(2, 4, 6, 2, 2, 2, 3, 2, 4, 2)
restaurant_groups <- data.frame(group_id, group_size)

## Code ----
# Create a histogram of group_size
ggplot(restaurant_groups, aes(group_size)) +
  geom_histogram(bins = 5)

# Count number of each group sizes
size_distribution <- restaurant_groups %>%
  count(group_size) %>%
  # Calculate probability
  mutate(probability = n / sum(n))

  # Calculate expected group size
  expected_val <- sum(size_distribution$group_size *
                      size_distribution$probability)
  
  # Calculate probability of picking group of 4 or more
  size_distribution %>%
    filter(group_size >= 4) %>%
  # Calculate prob_4_or_more by taking sum of probabilities
    summarize(prob_4_or_more = sum(probability))
    
  
  


