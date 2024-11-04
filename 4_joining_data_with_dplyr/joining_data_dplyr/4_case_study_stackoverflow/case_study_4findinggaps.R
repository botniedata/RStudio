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
sub_question_answers <-questions %>%
  # Inner join questions and answer with proper suffixes
  inner_join(answers, by = c("id" = "question_id"), suffix = c("_question", "_answer")) %>%
  # Subtract creation_date_question from creation_date_answer to create gap
  mutate(gap = as.integer(creation_date_question - creation_date_answer))



