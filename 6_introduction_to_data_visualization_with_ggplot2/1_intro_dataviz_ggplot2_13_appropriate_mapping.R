# Introduction to Data Visualization with ggplot2 ----

## appropriate mappings ----

# Data set
# "ToothGrowth"

# Variables
# len: Tooth length
# supp: Supplement type (VS or OJ)
# dose: Does in milligrams/day

print(str(ToothGrowth))
  
# Plotting data ----
ggplot(ToothGrowth, aes(x = supp, y = len, color = dose)) +
  geom_point(position = "jitter")