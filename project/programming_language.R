# Load necessary packages ----
library(readr)
library(dplyr)
library(ggplot2)

# Metadata ----
# • year:           The year the question was asked (2008-2020) 
# • tag:            A word or phrase that describe the topic of the question
# • num_questions:  The number of questions with a certain tag in the year
# • year_total:     The total number of questions asked in that year

# Restarting Environment ----
rm(list = ls())

# Load the dataset ----
data <- read_csv("F:\\R\\dataset\\stack_overflow_data.csv")


## Question #1 (Has R been growing or shrinking over time?)----
# Has R been growing or shrinking over time? Save your answer as a data frame, r_over_time, with five columns: year, tag, num_questions, year_total, and fraction.

# Question 1: Has R been growing or shrinking over time?

# Add fraction column
data_fraction <- data %>%
  mutate(fraction = num_questions / year_total * 100)

# Filter for R tags
r_over_time <- data_fraction %>%
  filter(tag == "r")

print(r_over_time)

# Plot a line plot of fraction 
ggplot(r_over_time, aes(x = year, y = fraction)) + 
  geom_line()

## Question #2 (Fraction of the total number of questions asked in 2020 had the R tag) ----
# What fraction of the total number of questions asked in 2020 had the R tag? Save your answer as a numeric variable, r_percentage, in percentage format (e.g. 0.5 becomes 50).

# Filter for R tags in 2020
R_tag_2020 <- data_fraction %>% 
  filter(tag == "r", year == "2020")

# Select the fraction column
r_selected <- R_tag_2020 %>% 
  select(fraction)

# Save as a numeric variable
r_percentage <- r_selected$fraction

## Question #3 (Top 5 Most Asked-about tags between 2015-2020?) ----
# What were the five most asked-about tags between 2015-2020?
# Find total number of questions for each tag in the period 2015-2020
sorted_tags <- data %>%
  filter(year >= 2015) %>% 
  group_by(tag) %>% 
  summarize(tag_total = sum(num_questions)) %>% 
  arrange(desc(tag_total))

# Get the five largest tags
highest_tags <- head(sorted_tags$tag, n = 5)

print(highest_tags)

### visualization for 5 largest tags ----
# Filter for the five largest tags
data_subset <- data_fraction %>%
  filter(tag %in% highest_tags, year >= 2015)

# Plot tags over time on a line plot using color represent tag
ggplot(data_subset, aes(x = year, y = fraction, color = tag)) +
  geom_line()

  
  
  
  
## Question #4 (Which tag experienced the largest year-over-year increase in its fraction of questions? ----

# Calculate the fraction of questions for each tag per year
data_fraction_year <- data %>% 
  group_by(year) %>% 
  mutate(year_total = sum(num_questions)) %>% 
  ungroup() %>% 
  mutate(fraction = num_questions / year_total)

# Calculate the ratio of the fraction of questions for each tag compared to the previous year
tag_ratios_filtered <- data_fraction_year %>% 
  arrange(tag, year) %>% 
  group_by(tag) %>% 
  mutate(ratio = fraction / lag(fraction)) %>% 
  ungroup()

# Find the tag with the highest ratio increase
highest_ratios <- tag_ratios_filtered %>% 
  slice_max(ratio, n = 1)

highest_ratio_tag <- highest_ratios$tag

# Print the results
print(highest_ratio_tag)