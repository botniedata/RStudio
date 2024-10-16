# Introduction to R ----
## Matrices - Naming ----

# Matrices are rectangular arrays of numbers or symbols arranged in rows and columns. They are a powerful tool used in various fields of mathematics, including linear algebra, statistics, and computer science.
# colnames() function in R would return a character vector containing the names of the columns
# rownames() function in R would return a character vector containing the names of the rows

# For restarting environment
rm(list = ls())

# Box Office Demon Slayer Sales (in Million)
unwavering_resolve_arc <- c(20.50, 15.25)
mugen_train_arc <- c(25.35, 20.10)
swordsmith_village_arc <-c(30.70, 25.55)

# Construct Demons Slayer Matrix
demons_slayer_matrix <- matrix(c(unwavering_resolve_arc, mugen_train_arc, swordsmith_village_arc), nrow = 3, byrow = TRUE)

# Vectors for category sales and arc, used for naming
categories <- c("Manga", "Anime")
titles <- c("Tanjiro Kamado, Unwavering Resolve Arc (2019)", "Mugen Train Arc and Entertainment District Arc (2021-2022)", "Swordsmith Village Arc (2023)")

# Name the columns with Category
colnames(demons_slayer_matrix) <- categories

# Name the rows with titles
rownames(demons_slayer_matrix) <- titles

# Print out demons_slayer_matrix
demons_slayer_matrix









