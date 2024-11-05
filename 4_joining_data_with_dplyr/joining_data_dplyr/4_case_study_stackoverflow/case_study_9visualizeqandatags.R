# Case Study: Joins on Stack Overflow Data ----

# Load packages ----
library(dplyr)
library(tidyverse)
library(readr)
library(ggplot2)
library(lubridate)

# Restart Environment ----
rm(list = ls())

# Load CSV ----
questions <- read_csv("F:\\R\\dataset\\stack over flow\\questions.csv")
answers <- read_csv("F:\\R\\dataset\\stack over flow\\answers.csv")
question_tags <- read_csv("F:\\R\\dataset\\stack over flow\\question_tags.csv")
tags <- read_csv("F:\\R\\dataset\\stack over flow\\tags.csv")

questions_with_tags <- questions %>%
  inner_join(question_tags, by = c("id" = "question_id")) %>%
  inner_join(tags, by = c("tag_id" = "id"))

answers_with_tags <- answers %>%
  inner_join(question_tags, by = "question_id") %>%
  inner_join(tags, by = c("tag_id" = "id"))

# Combine the two tables into posts_with_tags
posts_with_tags <- bind_rows(questions_with_tags %>%
                             mutate(type = "question"),
                             answers_with_tags %>% 
                            mutate(type = "answer"))

# Add a year column, then count by type, year, and tag_name
by_type_year_tag <- posts_with_tags %>%
  mutate(year = year(creation_date)) %>%
  count(type, year, tag_name)

# Code ----
# Filter for the dplyr and ggplot2 tag names 
by_type_year_tag_filtered <- by_type_year_tag %>%
  filter(tag_name %in% c("dplyr", "ggplot2"))

# Create a line plot faceted by the tag name 
ggplot(by_type_year_tag_filtered,
       aes(x = year, y = n, color = type)) +
  geom_line() +
  facet_wrap(~ tag_name)
