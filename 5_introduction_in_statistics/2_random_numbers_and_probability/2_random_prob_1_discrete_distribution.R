# Introduction to Statistics in R ----

## Random Chances----
# Measuring chance
# What's the probability of an event
#
# Number of ways event can happen
# --------------------------------- = P(event)
# Total number of possible outcomes

# Example (Coin Flip):
# 1 way to get heads    1
# ------------------- = _ = 50% = P(heads)
# 2 possible outcomes   2

# Impossible                Will certainly happen
#     |---------------|---------------|
#     0%             50%             100%

# Sampling from a data frame
# df %>% sample_n(1)


# Load packages ----
library(dplyr)
library(readr)
library(ggplot2)

# Restart Environment ----
rm(list = ls())

# Load data frame ----
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


# Code ----
# Set random seed to 31
set.seed(31)

# Sample 5 deals without replacement
amir_deals %>%
  sample_n(5)

# Sample 5 deals with replacement
amir_deals %>%
  sample_n(5)

