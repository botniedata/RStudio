# Data Manipulation with dplyr ----
## Select and Transforming Data ----

## select() function ----
# The select() function in R allows you to select specific columns from a data frame. While it doesn't have a built-in range functionality, you can achieve similar results using other methods:

# • Using column indices:
# new_df <- select(df, 3:5)  # Selects columns 3 to 5

# • Using colum names:
# new_df <- select(df, column1:column5)  # Selects columns from column1 to column5

# • Using regular expression:
# new_df <- select(df, starts_with("col"), ends_with("1"))  # Selects columns starting with "col" and ending with "1"

# • Using negation:
# new_df <- select(df, -c(column1, column3))  # Selects all columns except column1 and column3

# • Using functions:
# new_df <- select(df, contains("data"), num_range(1:5))  # Selects columns containing "data" and columns 1 to 5

## Load libraries (tidyverse, ggplot2, gapminder) ----
install.packages("dplyr")

library(tidyverse)
library(ggplot2)
library(gapminder)

# Load dataset counties
counties <- read.csv("F:\\R\\dataset\\counties.csv")


## Restarting Environment ----
rm(list = ls())

### Code ----
# Glimpse the counties table
glimpse(counties)

# Select state, county, population, and industry-related columns (related to the industry of people's work)
counties %>%
  select(state, county, population, professional:production) %>%
# Arrange service in descending order

