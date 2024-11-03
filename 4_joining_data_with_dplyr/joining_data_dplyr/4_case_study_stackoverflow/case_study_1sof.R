# Case Study: Joins on Stack Overflow Data ----
## Case Study: Joins on Stack Overflow Data ----
# Load packages ----
library(dplyr)
library(tidyverse)
library(readr)
library(lubridate)

# Restart Environment ----
rm(list = ls())

# Load CSV ----

questions <- read_csv("F:\\R\\dataset\\stack over flow\\questions.csv")
question_tags <- read_csv("F:\\R\\dataset\\stack over flow\\question_tags.csv")

#

