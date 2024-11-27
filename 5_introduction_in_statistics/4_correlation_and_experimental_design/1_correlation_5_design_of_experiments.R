# Introduction to Statistics in R ----

## exponential distribution ----
# probability of time between Poisson events
# examples:
# probability of > 1 day between adoptions
# probability of < 10 minutes between restaurant arrival
# probability of 6-8 months between earthquakes

# Also uses lambda (rate)
# Continuous (time)

# Restart Environment ----
rm(list = ls())

# Load library ----
#install.packages("tidyverse")
library(readr)
library(dplyr)
library(ggplot2)

# Load data set ----
data <- read_csv("F:\\R\\dataset\\world_happiness_2.csv")

# Data manipulation ----
country <- data$country
social_support <- as.integer(data$social_support)
freedom <- as.integer(data$freedom)
corruption <- as.integer(data$corruption)
generosity <- as.integer(data$generosity)
gdp_per_cap <- as.integer(data$gdp_per_cap)
life_exp <- as.double(data$life_exp)
happiness_score <- as.double(data$happiness_score)
grams_sugar_per_day <- as.double(data$grams_sugar_per_day)

world_happiness <- data.frame(country, social_support, freedom, corruption,
                              generosity, gdp_per_cap, life_exp, happiness_score, grams_sugar_per_day)

# Code ----
# Scatterplot of grams_sugar_per_day and happiness_score
ggplot(world_happiness, aes(x = grams_sugar_per_day, y = happiness_score)) +
  geom_point()

# Correlation between grams_sugar_per_day and happiness_score
cor(grams_sugar_per_day, happiness_score) # result: 0.69391 (70%)

# Note: Increased sugar consumption is associated with a higher happiness score.
