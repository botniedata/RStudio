# Introduction to R ----
## Comparing ordered factors ----

# When comparing ordered factors in R, you use various statistical methos and visualizations to asses the relationship between different groups or categories

# For restarting environment
rm(list = ls())

# Create speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")

# Convert speed_vector to ordered factor vector
factor_speed_vector <- factor(speed_vector,
                              order = TRUE,
                              levels = c("slow", "medium", "fast"))

# Factor value for the second element
element2 <- factor_speed_vector[2]

# Factor value for the fifth element
element5 <- factor_speed_vector[5]

# Print out values of element 2 and element 5
print(element2)
print(element5)

# Is element 2 faster than element 5?
element2 > element5

