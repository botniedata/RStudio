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
data <- read_csv("F:\\R\\dataset\\world_happiness.csv")

# Data manipulation ----
country <- data$country
social_support <- as.integer(data$social_support)
freedom <- as.integer(data$freedom)
corruption <- as.integer(data$corruption)
generosity <- as.integer(data$generosity)
gdp_per_cap <- as.integer(data$gdp_per_cap)
life_exp <- as.double(data$life_exp)
happiness_score <- as.double(data$happiness_score)

world_happiness <- data.frame(country, social_support, freedom, corruption,
                              generosity, gdp_per_cap, life_exp, happiness_score)

# Code ----
# Create a scatter plot of gdp_per_cap vs. life_exp
ggplot(world_happiness, aes(x = gdp_per_cap, y = life_exp)) +
  geom_point()

# Correlation between gdp_per_cap and life_exp
cor(world_happiness$gdp_per_cap, world_happiness$life_exp)

# Note:
# The correlation between GDP per capita and life expectancy is 0.7. Why is correlation not the best way to measure the relationship between the two variables?
# Answer: Correlation only measures linear relationships.


