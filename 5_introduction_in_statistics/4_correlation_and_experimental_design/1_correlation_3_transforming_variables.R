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
# Scatterplot of happiness_score vs. gdp_per_cap
ggplot(world_happiness, aes(x = gdp_per_cap, y = happiness_score)) +
  geom_point()

# Calculate correlation
cor(world_happiness$happiness_score, world_happiness$gdp_per_cap)

# Create log_gdp_per_cap column
world_happiness <- world_happiness %>%
  mutate(log_gdp_per_cap = log(gdp_per_cap))

# Scatterplot of happiness_score vs. log_gdp_per_cap
ggplot(world_happiness, aes(x = log_gdp_per_cap, y = happiness_score)) +
  geom_point()

# Calculate correlation
cor(world_happiness$log_gdp_per_cap, world_happiness$happiness_score)
