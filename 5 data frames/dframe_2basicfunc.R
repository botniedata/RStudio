# Introduction to R ----
## head() function ----

# head() function in R is used to display the first few rows of a data frame or matrix. It's a helpful tool for quickly inspecting the structure and content of your data.

# For restarting environment
rm(list = ls())

# Call head() on mtcars
head(mtcars)

# Call head() on mtcars with 10 observations
head(mtcars, n = 10)