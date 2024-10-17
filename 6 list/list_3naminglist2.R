# Introduction to R ----
## Naming list ----

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



### Naming list----
shining_list <- list("moviename" = mov,
                     "actors" = act,
                     "reviews" = rev)

# Print out shining_list
shining_list

