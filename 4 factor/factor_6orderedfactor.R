# Introduction to R ----
## Ordered Factor ----

# An ordered factor in R is a categorical variable where the levels have a specific order or hierarchy. 

# This is useful when the categories represent ordinal data, such as "low", "medium", and "high," or "strongly disagree", "disagree", "neutral", "agree", and "strongly agree."

# For restarting environment
rm(list = ls())

# Create speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")

# Convert speed_vector to ordered factor vector
factor_speed_vector <- factor(speed_vector,
                              order = TRUE,
                              levels = c("slow", "medium", "fast"))

# Print factor_speed_vector
print(factor_speed_vector)
summary(factor_speed_vector)
