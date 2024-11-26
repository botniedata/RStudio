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

# Modeling time between leads 
# What's the probability it takes Amir less than an hour to respond to a lead?
# To further evaluate Amir's performance, you want to know how much time it takes him to respond to a lead after he opens it. On average, it takes 2.5 hours for him to respond. 
# In this exercise, you'll calculate probabilities of different amounts of time passing between Amir receiving a lead and sending a response.

# Probability response takes < 1 hour
pexp(1, rate = 0.4)

# Probability response takes > 4 hours
pexp(4, rate = 0.4, lower.tail = FALSE)

# Probability response takes 3-4 hours
pexp(4, rate = 0.4) - pexp(3, rate = 0.4)
