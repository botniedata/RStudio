# Data Manipulation with dplyr ----
## Transforming Data with dplyr ----

## dplyr package ----
# dplyr is a popular R package that provides a set of grammar-based functions for manipulating data frames efficiently. It offers a clean and intuitive syntax, making data cleaning, transformation, and aggregation tasks easier to perform.

# Key dplyr Verbs:
# • select(): Extracts specific columns from a data frame.
# • filter(): Filters rows based on conditions.
# • arrange(): Sorts rows based on specific columns.
# • mutate(): Creates new columns or modifies existing ones.
# • summarize(): Aggregates data based on groups.
# • group_by(): Groups data by specified variables.
# • join(): Joins multiple data frames based on common columns.

## tidyverse: A Comprehensive Ecosystem for Data Analysis ----
# tidyverse is a collection of R packages designed to work together seamlessly for data manipulation, visualization, and analysis. It provides a consistent grammar and set of tools, making data science tasks more efficient and enjoyable.

# Core Packages in tidyverse:
# • dplyr: For data manipulation and transformation.
# • ggplot2: For creating elegant and customizable visualizations.
# • tidyr: For tidying data, such as reshaping and pivoting.
# • readr: For reading data from various file formats (CSV, TSV, etc.).
# • magrittr: For the pipe operator (%>%), which makes data manipulation more readable.
# • purrr: For functional programming techniques, such as mapping functions over lists or data frames.
# • tibble: A modern data frame implementation with improved features.
# • stringr: For working with strings and text data.

# Benefits of Using tidyverse:
# • Consistency: The tidyverse packages share a common grammar and philosophy, making it easier to learn and use.
# • Efficiency: The tools are designed for efficient data manipulation and analysis.
# • Readability: The pipe operator (%>%) makes code more readable and easier to understand.
# • Integration: The packages work well together, providing a comprehensive toolkit for data analysis.


## dplyr only or entire tidyverse including dplyr installation:
# install dplyr only:
install.packages("dplyr")

# install entire tidyverse including dplyr:
install.packages("tidyverse")

## Restarting Environment ----
rm(list = ls())


