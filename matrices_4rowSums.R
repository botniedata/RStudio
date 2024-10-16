# Introduction to R ----
## Matrices - rowSums ----

# Matrices are rectangular arrays of numbers or symbols arranged in rows and columns. They are a powerful tool used in various fields of mathematics, including linear algebra, statistics, and computer science.
# rowSums() function calculates the totals for each row of a matrix. This function creates a new vector
# dimnames is an attribute in R that allows you to assign names to the dimensions (rows and columns) of a matrix or array. It provides a way to label and identify different elements within the data structure.

# For restarting environment
rm(list = ls())

# Construct demons_slayer_matrix
demons_slayer <- c(20.50, 15.25, 25.35, 20.10, 30.70, 25.55)
categories <- c("Manga", "Anime")
titles <- c("Tanjiro Kamado, Unwavering Resolve Arc (2019)",
            "Mugen Train Arc and Entertainment District Arc (2021-2022)",
            "Swordsmith Village Arc (2023)")
demon_slayer_matrix <- matrix(demons_slayer,
                              nrow = 3, byrow = TRUE,
                              dimnames = list(titles, categories))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(demon_slayer_matrix)

# Print out worldwide_vector
print(worldwide_vector)









