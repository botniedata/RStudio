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
question_tags <- read_csv("F:\\R\\dataset\\stack over flow\\question_tags.csv")
tags <- read_csv("F:\\R\\dataset\\stack over flow\\tags.csv")

answer_counts <- answers %>%
  count(question_id, sort = TRUE)

question_answer_counts <- questions %>%
  left_join(answer_counts, by = c("id" = "question_id")) %>%
  replace_na(list(n = 0))

tagged_answers <- question_answer_counts %>%
  # Join the question_tags tables
  inner_join(question_tags, by = c("id" = "question_id")) %>%
  # Join the tags table
  inner_join(tags, by = c("tag_id" = "id"))

# Code ----
tagged_answers %>%
  # Aggregate by tag_name
  group_by(tag_name) %>%
  # Summarize questions and average_answers
  summarize(questions = n(), # n() verb counts the rows of the data set
            average_answer = mean(n)) %>%
  # Sort the questions in descending order
  arrange(desc(questions))


