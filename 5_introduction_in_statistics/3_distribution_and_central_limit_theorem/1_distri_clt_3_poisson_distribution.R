# Introduction to Statistics in R ----

## poisson distribution ----
# events appear to happen at a certain rate, but completely at random
# example:
# number of animals adopted from an animal shelter per week
# number of people arriving at a restaurant per hour
# number of earthquakes in California per year

# probability of some # of events occurring over a fixed period of time
# example:
# probability of >= 5 animals adopted from an animal shelter per week
# probability of 12 people arriving at a restaurant per hour
# probability of < 20 earthquakes in California per year
  
# lambda (λ) - average number of events per time interval
# • average number of adoptions per week = 8 (expected value of the distribution)

# Code:
# if the average number of adoption per week is 8, what is P(# adoption in a week = 5)?
# dpois(5, lambda = 8)

# # if the average number of adoption per week is 8, what is P(# adoption in a week <= 5)?
# ppois(5, lambda = 8)

# # if the average number of adoption per week is 8, what is P(# adoption in a week > 5)?
# ppois(5, lambda = 8, lower.tail = FALSE)

# sampling from a Poisson distribution
# in 10 weeks with average number of 8
# rpois(10, lambda = 8)

# Restart Environment ----
rm(list = ls())

# Code ----
# What's the probability that Amir responds to 5 leads in a day, given that he responds to an average of 4?
dpois(5, lambda = 4)

# Amir's coworker responds to an average of 5.5 leads per day. What is the probability that she answers 5 leads in a day?
dpois(5, lambda = 5.5)

# What's the probability that Amir responds to 2 or fewer leads in a day?
ppois(2, lambda = 4)

# What's the probability that Amir responds to more than 10 leads in a day?
ppois(10, lambda = 4, lower.tail = FALSE)

