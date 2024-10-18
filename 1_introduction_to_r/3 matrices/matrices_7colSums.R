# Introduction to R ----
## Matrices - Add Row ----

# Matrices are rectangular arrays of numbers or symbols arranged in rows and columns. They are a powerful tool used in various fields of mathematics, including linear algebra, statistics, and computer science.

## Matrices ----

# For restarting environment
rm(list = ls())

# Construct demons_slayer_matrix (Season 1 to 3)
demons_slayer <- c(20.50, 15.25, 25.35, 20.10, 30.70, 25.55)
categories <- c("Manga", "Anime")
titles <- c("New Mission",
            "Set Your Heart Blaze",
            "No Matter How Many Lives")
demons_slayer_matrix <- matrix(demons_slayer,
                               nrow = 3, byrow = TRUE,
                               dimnames = list(titles, categories))

demons_slayer <- c(21.75, 15.25, 35.10, 15.75, 22.20, 11.20)
categories <- c("Manga", "Anime")
titles <- c("A Connected Bond: Daybreak and First Light",
            " To Defeat Muzan Kibutsuji",
            "The Hashira Unite")
demons_slayer_matrix2 <- matrix(demons_slayer,
                                nrow = 3, byrow = TRUE,
                                dimnames = list(titles, categories))

# Matrices
demons_slayer_matrix
demons_slayer_matrix2

# Combine both Matrices in one matrix
all_arcs <- rbind(demons_slayer_matrix, demons_slayer_matrix2)











### Selection ----
# Select the Anime revenue for all movies
anime_revenue <- all_arcs[ ,2]

# Average Anime Revenue
avg_anime_revenue <- mean(anime_revenue)

# Select the Anime revenue for first 2 movies
anime_some <- all_arcs[1:2, 2]

# Average Anime revenue for first two movies
avg_first_two_anime <- mean(anime_some)

# Print avg_first_two_anime
print(avg_first_two_anime)