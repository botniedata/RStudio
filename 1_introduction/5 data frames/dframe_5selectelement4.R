# Introduction to R ----
## Selection of data frame elements----

## Data Frame ----
# For restarting environment
rm(list = ls())

# Definition of vectors
hashira <- c("Muichiro", "Tengen", "Gyomei", "Obinai", "Giyu", "Shinobu", "Mitsuri", "Kyojuro", "Sanemi")
gender <- c("Male", "Male", "Male", "Male", "Male", "Female", "Female", "Male", "Male")
elements <- c("Mist", "Sound", "Stone", "Snake", "Water", "Poison", "Love", "Fire", "Wind")
rank_power <- c(5, 6, 7, 1, 3, 4, 8, 9, 2)
damage <- c(50, 60, 70, 100, 30, 40, 80, 90, 20)
earth_element <- c(FALSE, FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE)

# Create a data frame from the vectors
hashira_df <- data.frame(hashira, gender, elements, rank_power, damage, earth_element)

# Print out hashira_df
print(hashira_df)

# Check the structure of hashira_df
str(hashira_df)




## Adapt the code to select all columns for hashira has earth elements ----
hashira_df[earth_element, 1:5]