# Introduction to R ----
## Creating list ----

# For restarting environment
rm(list = ls())

### Dataset ----
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot") 

# Save the average of the scores vector as avg_review
avg_review <- mean(scores)

# Combine scores and comments into the reviews_df data frame
reviews_df <- data.frame(scores, comments)

movie_title <- "The Departed"
movie_actor <- c("Leonardo DiCaprio",
                 "Matt Damon",
                 "Jack Nicholson",
                 "Mark Wahlberg",
                 "Vera Farmiga",
                 "Martin Sheen")

# Create and print out a list, called departed_list
departed_list <- list(movie_title, movie_actors, reviews_df, avg_review)