# Case Study: Joins on Stack Overflow Data ----
## Case Study: Joins on Stack Overflow Data ----
# Load packages ----
library(dplyr)
library(tidyverse)
library(readr)

# Restart Environment ----
rm(list = ls())

# Load CSV ----

questions <- read_csv("F:\\R\\dataset\\stack over flow\\questions.csv")
question_tags <- read_csv("F:\\R\\dataset\\stack over flow\\question_tags.csv")
tags <- read_csv("F:\\R\\dataset\\stack over flow\\tags.csv")

# Joining tables and replace NAs as "only-r"
questions_with_tags <- questions %>%
  left_join(question_tags, by = c("id" = "question_id")) %>%
  left_join(tags, by = c("tag_id" = "id")) %>%
  replace_na(list(tag_name = "only-r"))
  
# Code ----
grouped_tag <- questions_with_tags %>%
  # Group by tag_name
  group_by(tag_name) %>%
  # Get mean score and num_questions
  summarize(score = mean(score),
            num_questions = n()) %>%
  # Sort num_questions in descending order
  arrange(desc(num_questions))


