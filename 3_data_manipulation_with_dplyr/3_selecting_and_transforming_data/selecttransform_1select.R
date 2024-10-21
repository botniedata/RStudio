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

## Load libraries ----
install.packages("dplyr")
library(tidyverse)
library(readr)

## Restarting Environment ----
rm(list = ls())

# Read the CSV file into a tibble
counties <- read_csv("F:\\R\\dataset\\counties.csv")

### Code (1) ----

# Glimpse the counties table
glimpse(counties)

# Select state, county, population, and industry-related columns (related to the industry of people's work)
counties %>%
  select(state, county, population, professional:production) %>%
# Arrange service in descending order
  arrange(desc(service))

### Code (2) Select Helpers ----
# Check the documentation of '?select_helpers'
# Select the state, county, population, and those ending with "work"
counties %>%
select(state, county, population, ends_with("work")) %>%

# Filter for counties that have at least 50% of people engaged in public work
filter(public_work > 50)



