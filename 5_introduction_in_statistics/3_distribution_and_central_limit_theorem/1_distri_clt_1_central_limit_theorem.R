  # Introduction to Statistics in R ----
  
  ## Central Limit Theorem ----
  # The Central Limit Theorem (CLT) is a fundamental theorem in probability theory and statistics. It states that the distribution of sample means approaches a normal distribution as the sample size increases, regardless of the underlying population distribution.
  
  # Load packages ---- 
  library(dplyr)
  library(readr)
  library(ggplot2)
  
  # Restart Environment ----
  rm(list = ls())
  
  # Load data set ----
  die <- c(1, 2, 3, 4, 5, 6)
  
  ## Code ----
  sample_of_5 <- sample(die, 5,
                          replace = TRUE) %>% mean()
  sample_of_5

  # Rolling the dice 5 time 10 times
  sample_means_10 <- replicate(10, sample(die, 5, replace = TRUE) %>% mean())
  data_means <- data.frame(sample_means_10)
  
  # Rolling the dice 5 time 10 times
  sample_means_100 <- replicate(100, sample(die, 5, replace = TRUE) %>% mean())
  data_means <- data.frame(sample_means_100)
  
  ggplot(data_means, aes(sample_means_100)) +
    geom_histogram(bins = 10)