# Introduction to Data Visualization with ggplot2 ----

## scatter plots ----

# Restart Environment ----
rm(list = ls())

# Load library ----
#install.packages("tidyverse")
library(tidyverse)
library(readr)
library(ggplot2)

# Data structure ----
str(mtcars)

# Data Manipulation ----
mtcars <- mtcars %>%
  mutate(fcyl = factor(cyl))

mtcars <- mtcars %>%
  mutate(fam = factor(am,
                      levels = c(0, 1),
                      labels = c(0, 1)))
# Code #1 ----
# Plot base
plt_mpg_vs_fcyl_by_fam <- ggplot(mtcars,
                                 aes(fcyl, mpg, color = fam))

# Default points are show for comparison
plt_mpg_vs_fcyl_by_fam + geom_point()

# Code #2 ----
# Plot base
plt_mpg_vs_fcyl_by_fam <- ggplot(mtcars, aes(fcyl, mpg, color = fam))

# Default points are shown for comparison
plt_mpg_vs_fcyl_by_fam + geom_point()

# Alter the point positions by jittering, width 0.3
plt_mpg_vs_fcyl_by_fam + geom_point(position = position_jitter(width = 0.3))

# Code #3 ----
# Plot base
plt_mpg_vs_fcyl_by_fam <- ggplot(mtcars, aes(fcyl, mpg, color = fam))

# Default points are shown for comparison
plt_mpg_vs_fcyl_by_fam + geom_point()

# Now jitter and dodge the point positions
plt_mpg_vs_fcyl_by_fam + geom_point(position = position_jitterdodge(jitter.width = 0.3,
                                                                    dodge.width = 0.3 ))

