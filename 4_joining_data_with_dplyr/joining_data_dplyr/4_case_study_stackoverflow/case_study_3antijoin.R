# Case Study: Joins on Stack Overflow Data ----
## Case Study: Joins on Stack Overflow Data ----
# Load packages ----
library(dplyr)
library(tidyverse)
library(readr)

# Restart Environment ----
rm(list = ls())

# Load CSV ----
question_tags <- read_csv("F:\\R\\dataset\\stack over flow\\question_tags.csv")
tags <- read_csv("F:\\R\\dataset\\stack over flow\\tags.csv")

# Using a join, filter for tags that are never on an R question
non_R_question <- tags %>%
  anti_join(question_tags, by = c("id" = "tag_id"))



