# Introduction to R ----
## Matrices - Naming ----

# Matrices are rectangular arrays of numbers or symbols arranged in rows and columns. They are a powerful tool used in various fields of mathematics, including linear algebra, statistics, and computer science.
# colnames() function in R would return a character vector containing the names of the columns
# rownames() function in R would return a character vector containing the names of the rows

# For restarting environment
rm(list = ls())

# Box Office Demon Slayer Sales (in Million)
new_mission <- c(20.50, 15.25)
set_your_heart_blaze <- c(25.35, 20.10)
no_matter_how_many_lives <-c(30.70, 25.55)

# Construct Demons Slayer Matrix
demons_slayer_matrix <- matrix(c(new_mission, set_your_heart_blaze, no_matter_how_many_lives), nrow = 3, byrow = TRUE)

# Vectors for category sales and arc, used for naming
categories <- c("Manga", "Anime")
titles <- c("New Mission", "Set Your Heart Blaze", "No Matter How Many Lives")

# Name the columns with Category
colnames(demons_slayer_matrix) <- categories

# Name the rows with titles
rownames(demons_slayer_matrix) <- titles

# Print out demons_slayer_matrix
demons_slayer_matrix









