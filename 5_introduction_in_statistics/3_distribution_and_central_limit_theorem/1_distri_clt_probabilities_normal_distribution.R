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
# Histogram of amount with 10 bins
amir_deals %>%
  ggplot(aes(amount)) + 
  geom_histogram(bins = 10) # normal distribution



