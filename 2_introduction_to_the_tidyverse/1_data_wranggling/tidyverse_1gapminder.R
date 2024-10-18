# Introduction to the Tidyverse ----
## gapminder dataset ----

## Gapminder: A Globla Dataset for Exploring Social and Economic Trends ----
# Gapminder is a renowned dataset that provides comprehensive information on various social and economic indicators for countries around the world. It's a valuable resource for researchers, policymakers, and data analysts interested in global development and inequality.

# Key Features of the Gapminder Dataset:
# • Wide Range of Indicators: Includes data on health, education, income, population, and environmental factors.
# • Historical Perspective: Covers data from multiple years, allowing for analysis of trends and changes over time.
# • Country-Level Data: Provides detailed information for individual countries.
# • Standardized Format: The data is typically presented in a consistent format, making it easy to work with.

# Common Uses of Gapminder Data:
# • Analyzing Global Inequality: Examining disparities in income, health, and education across countries.
# • Tracking Sustainable Development Goals: Assessing progress towards achieving the UN's Sustainable Development Goals.
# • Exploring Social and Economic Trends: Identifying patterns and correlations between different variables.
# • Creating Visualizations: Developing interactive charts and graphs to communicate findings effectively.

# Accessing the Gapminder Dataset:
# You can access the Gapminder dataset through various channels, including:
  
# • Gapminder Website: The official Gapminder website provides tools and resources for exploring and downloading the data.
# • R Packages: Several R packages, such as gapminder and ggplot2, offer direct access to the Gapminder dataset.
# • Other Data Repositories: The data might be available through other online repositories or data science platforms.



## Tidyverse ----
# A collection of data science tools within R for transforming and visualizing data

# Tidyverse Cycle ----
# Import -> Tidy -> Transformation > Visualize > Model -> Communication

## Loading packages (gapminder) created by Jenny Bryan ----
library(gapminder)

## Loading packages (dplyr) /dee-ply-er/
library(dplyr)

# Restarting Environment ----
rm(list = ls())

# Display gapminder dataset - data frame called tibble ----
gapminder

# Object is display as A tibble
# Observations (rows) count is 1,704
# Variables (columns) count is 6

