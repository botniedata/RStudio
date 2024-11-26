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

# Code ----
# How long until a new request is created?

# P(wait < 1 min)
pexp(1, rate = 0.5) # 0.3934693 (40% chance)

# P(wait > 4 min)
pexp(4, rate = 0.5, lower.tail = FALSE) # 0.1353353 (15% chance)

# P(1 min < wait < 4 min)
pexp(4, rate = 0.5) - pexp(1, rate = 0.5) # 0.4711954 (50% change)