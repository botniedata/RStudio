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

# Code ----
# Inner join the question_tags and tags tables with the questions table
questions %>%
  inner_join(question_tags, by = c("id" = "question_id")) %>%
  inner_join(tags, by = c("tag_id" = "id"))

# Inner join the question_tags and tags tables with the answers table
answers %>%
  inner_join(question_tags, by = c("question_id" = "question_id")) %>%
  inner_join(tags, by = c("tag_id" = "id"))

# Note:
# colnames() to identify the column names instantly