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

# Restart Environment ----
rm(list = ls())

# Load data frame ----
amir_deals <- read_csv("F:\\R\\dataset\\amir_deals.csv")

levels_product <- amir_deals$product 
factor_product <- factor(amir_deals$product)
levels(factor_product) <- levels(levels_product) <- c("Product A", "Product B", "Product C", "Product D", "Product E", "Product F", "Product G", "Product H", "Product I", "Product J", "Product K", "Product L", "Product M", "Product N", "Product O", "Product P")

levels_client <- amir_deals$client 
factor_client <- factor(amir_deals$client)
levels(factor_client) <- levels(levels_client) <- c("New", "Past")

levels_status <- amir_deals$status 
factor_status <- factor(amir_deals$status)
levels(factor_status) <- levels(levels_status) <- c("Lost", "Won")



# Restart Environment ----
rm(list = ls())

# Code ----

