  # Introduction to Statistics in R ----
  
  ## Central Limit Theorem ----
  # The Central Limit Theorem (CLT) is a fundamental theorem in probability theory and statistics. It states that the distribution of sample means approaches a normal distribution as the sample size increases, regardless of the underlying population distribution.
  
  # Load packages ---- 
  library(dplyr)
  library(readr)
  library(ggplot2)
  
  # Restart Environment ----
  rm(list = ls())
  
  # Datas set
  data <- read_csv("F:\\R\\dataset\\amir_deals.csv")
  
  # Reconstruction of data set data ---
  product <- data$product
  product <- factor(product,
                    levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14),
                    labels = c("Product A", "Product B", "Product C", "Product D",
                               "Product E", "Product F", "Product G", "Product H",
                               "Product I", "Product J", "Product K", "Product L",
                               "Product N",  "Product P"))
  client <- data$client
  client <- factor(client,
                   levels = c(1, 2, 3),
                   labels = c("Curent", "New", "Past"))
  
  status <- data$status
  status <- factor(status,
                   levels = c(1, 2),
                   labels = c("Lost", "Won"))
  
  amount <- data$amount
  num_users <- data$num_users
  
  # Save as data frame named amir_deals
  amir_deals <- data.frame(product, client, status, amount, num_users)
  
  ## Code ----
  amir_columns <- colnames(amir_deals)
  amir_columns
  
  # Create a histogram of num_users
  ggplot(amir_deals, aes(x = num_users)) +
    geom_histogram(bins = 5)
  
  set.seed(104)
  # Sample 20 num_users with replacement from amir_deals
  sample(amir_deals$num_users, 20, replace = TRUE) %>%
    mean()
  
  # Repeat the above 100 times
  sample_means <- replicate(100, sample(amir_deals$num_users, size = 20, replace = TRUE) %>% mean())
  
  # Create data frame for plotting
  samples <- data.frame(mean = sample_means)
  
  # Histogram of sample means
  ggplot(samples, aes(mean)) +
    geom_histogram(bins = 10)