# IRIS ----

# Restart Environment ----
rm(list = ls())

# Load library ----
library(tidyverse)
library(ggplot2)

# Load data set ----
iris #Edgar Anderson's Iris Dataset

# Plotting data ----
ggplot(iris, aes(x = Sepal.Length,
                 y = Sepal.Width,
                 color = Species)) +
  geom_point()