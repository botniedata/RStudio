# Introduction to R ----
## Selecting elements from a list ----

# For restarting environment
rm(list = ls())

### Dataset ----
mov <- "The Shining"

act <- c("Jack Nicholson",
         "Shelley Duvall",
         "Danny Lloyd",
         "Scatman Crothers",
         "Barry Nelson" )

scores <- c(4.5, 4.0, 5.0)
sources <- c("IMDb1", "IMDb2","IMDb3")
comments <- c("Best Horror Film I Have Ever Seen",
              "A truly brilliant and scary film from Stanley Kubrick",
              "A masterpiece of psychological horror")

rev <- data.frame(scores, sources, comments)
shining_list <- list(mov, act, rev)
names(shining_list) <- c("moviename", "actors", "reviews")


### Selecting Elements from a list----

# Print out the vector representing the actors
shining_list[[2]]

# Print out the second element of the vector representing the actors
shining_list[[2]][2]

