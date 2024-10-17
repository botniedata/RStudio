# Introduction to R ----
## Naming list ----

# For restarting environment
rm(list = ls())

# Vector with numerics from 1 to 9
my_vector <- 1:9

# Matrix with numerics from 1 up tp 10
my_matrix <- matrix(1:10,
                    ncol = 5)

# First 7 elements of the built-in data frame mtcars
my_df <- mtcars[1:7, ]

### Naming (direct by the use of "name"=element_name) ----
# Construct list with these different elements:
my_list <- list("vec"=my_vector, "mat"=my_matrix, "df"=my_df)

### Naming (2) ----
# Construct list with these different elements:
my_list2 <- list(my_vector, my_matrix, my_df)

# Naming lists by the use of names() function
names(my_list2) <- c("vec", "mat", "df")
