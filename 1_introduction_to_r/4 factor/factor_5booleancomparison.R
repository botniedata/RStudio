# Introduction to R ----
## Summarize a Factor ----

# Comparing elements of a factor, testing of factor with two levels

# For restarting environment
rm(list = ls())

# Create a factor_levels_vector with clean levels
levels_factor <- c("D", "U", "U", "D", "D")
factor_levels_vector <- factor(levels_factor)
levels(factor_levels_vector) <- levels(levels_factor) <- c("Down", "Up")

# down
down <- factor_levels_vector[1]

# up
up <- factor_levels_vector[2]

# Battle of levels: Down is 'larger" than Up?
down > up

# R returns NA when you try to compare values in a factor, since the idea doesn't make sense.
# [1] NA
# Warning message:
# In Ops.factor(down, up) : ‘>’ not meaningful for factors