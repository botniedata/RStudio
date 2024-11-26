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
# Data set
data <- read_csv("F:\\R\\dataset\\all_deals.csv")
data2 <- read_csv("F:\\R\\dataset\\amir_deals.csv")

# Reconstruction of data set data ---
product <- as.integer(data$product)
num_users <- as.double(data$num_users)
all_deals <- data.frame(product, num_users)

product <- data2$product
product <- factor(product,
                  levels = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14),
                  labels = c("Product A", "Product B", "Product C", "Product D",
                             "Product E", "Product F", "Product G", "Product H",
                             "Product I", "Product J", "Product K", "Product L",
                             "Product N",  "Product P"))
client <- data2$client
client <- factor(client,
                 levels = c(1, 2, 3),
                 labels = c("Curent", "New", "Past"))

status <- data2$status
status <- factor(status,
                 levels = c(1, 2),
                 labels = c("Lost", "Won"))

amount <- data2$amount
num_users <- data2$num_users

# Save as data frame named amir_deals
amir_deals <- data.frame(product, client, status, amount, num_users)


# Code ----
# Set seed to 321
set.seed(321)

# Take 30 samples of 20 values of num_users, take mean of each sample
sample_means <- replicate(30, sample(all_deals$num_users, 20) %>% mean())

# Calculate mean of sample_means
mean(sample_means)

# Calculate mean of num_users in amir_deals
mean(amir_deals$num_users)




