# Case Study: Joins on Stack Overflow Data ----

# Load packages ----
library(dplyr)
library(tidyverse)
library(readr)

# Restart Environment ----
rm(list = ls())

# Load CSV ----
questions <- read_csv("F:\\R\\dataset\\stack over flow\\questions.csv")
answers <- read_csv("F:\\R\\dataset\\stack over flow\\answers.csv")

# Code ----
# Count and sort the question id column in the answers table
answer_counts <- answers %>%
  count(question_id, sort = TRUE)

# Combine the answer_counts and questions tables
answer_counts_and_questions <- questions %>%
  left_join(answer_counts, by = c("id" = "question_id")) %>%
  replace_na(list(n = 0))



