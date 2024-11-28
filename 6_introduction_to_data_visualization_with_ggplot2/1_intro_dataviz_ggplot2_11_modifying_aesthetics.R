# Introduction to Data Visualization with ggplot2 ----

## using attributes----

# Restart Environment ----
rm(list = ls())

# Load library ----
#install.packages("tidyverse")
library(tidyverse)
library(readr)
library(ggplot2)

# Plot #1 ----
ggplot(iris, aes(x = Sepal.Length,
                 y = Sepal.Width,
                 color = Species)) +
  geom_point()   # position = "identity" (default)

# Plot #2 ----
ggplot(iris, aes(x = Sepal.Length,
                 y = Sepal.Width,
                 color = Species)) +
  geom_point(position = "jitter")   # plot all data points on the plot

# Plot #3 ----
posn_j <- position_jitter(0.1)

ggplot(iris, aes(x = Sepal.Length,
                 y = Sepal.Width,
                 color = Species)) +
  geom_point(position = posn_j)   # variable posn_j assign position_jitter(0.1)

# Plot #4 ----
posn_j <- position_jitter(0.1,         # set arguement for the position
                          seed = 136)  # consistency across plots & layers

ggplot(iris, aes(x = Sepal.Length,
                 y = Sepal.Width,
                 color = Species)) +
  geom_point(position = posn_j)

# Plot #5 ----
ggplot(iris, aes(x = Sepal.Length,
                 y = Sepal.Width,
                 color = Species)) +
  geom_point(position = "jitter") +            # position = "jitter"
  scale_x_continuous("Sepal Length",           # scale_x_continuous("Sepal Length")
                     limits = c(2, 8),         # limits describe the scale's range
                     breaks = seq(2, 8, 3),    # breaks control the tick mark position
                     expand = c(0, 0),         # expand is a numeric vector of length two, multi and additive const
                     labels = c("Setosa",      # labels adjust the category names
                                "Versicolor",
                                "Virginica")) +        
  scale_color_discrete("Species")         # scale_color_discrete("Species")

# Plot #6 ----
ggplot(iris, aes(x = Sepal.Length,
                 y = Sepal.Width,
                 color = Species)) +
  geom_point(position = "jitter") +
  labs(x = "Sepal Length",
       y = "Sepal Width",
       color = "Species")
                
