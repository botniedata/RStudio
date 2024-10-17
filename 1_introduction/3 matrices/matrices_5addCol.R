# Introduction to R ----
## Matrices - Add Columns ----

# Matrices are rectangular arrays of numbers or symbols arranged in rows and columns. They are a powerful tool used in various fields of mathematics, including linear algebra, statistics, and computer science.

# For restarting environment
rm(list = ls())

# Construct demons_slayer_matrix
demons_slayer <- c(20.50, 15.25, 25.35, 20.10, 30.70, 25.55)
categories <- c("Manga", "Anime")
titles <- c("New Mission",
            "Set Your Heart Blaze",
            "No Matter How Many Lives")
demon_slayer_matrix <- matrix(demons_slayer,
                              nrow = 3, byrow = TRUE,
                              dimnames = list(titles, categories))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(demon_slayer_matrix)

# Bind the new variable worldwide_vector as a column to demon_slayer_matrix
all_demons <- cbind(demon_slayer_matrix, worldwide_vector)

# Print out the all_demons
print(all_demons)









