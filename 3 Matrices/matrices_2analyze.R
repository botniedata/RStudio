# Introduction to R ----
## Matrices - Analyze ----

# Matrices are rectangular arrays of numbers or symbols arranged in rows and columns. They are a powerful tool used in various fields of mathematics, including linear algebra, statistics, and computer science.

# For restarting environment
rm(list = ls())

# Box Office Demon Slayer Sales (in Million)
new_mission <- c(20.50, 15.25)
set_your_heart_blaze <- c(25.35, 20.10)
no_matter_how_many_lives <-c(30.70, 25.55)


# Create a vector for 3 Seasons
box_office <- c(new_mission, set_your_heart_blaze, no_matter_how_many_lives)

# Construct Demons Slayer Matrix - demons_slayer_matrix
demons_slayer_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)

# Print out demon_slayer_matrix
print(demons_slayer_matrix)




