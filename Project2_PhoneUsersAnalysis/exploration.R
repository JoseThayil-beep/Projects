# -Loading libraries------------------------------------------------------------------------------
library(magick)
library(tidyverse)

# -Importing CSV file and configuring for use-----------------------------------------------------
# Importing CSV and setting to variable logged_data
logged_data <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vSUC04OdqkByKtoLhiOpbvoyzK17XSsSuEJY2pzDWmv-W71In0ZaZWVGkx2f3buUVVrWScmtoXqQjeR/pub?output=csv")
# Renaming columns in variable logged_data and creating new data frame = latest_data
latest_data <- logged_data %>% 
  rename(
    "Day_Type"                  = "Are you taking the bus on a weekday or weekend?",
    "Time_of_Day"               = "What is the time of day?", 
    "Proportion_of_phone_users" = "Of the people you can currently see around you, what proportion of people are using a mobile device? Remember to include yourself in this calculation! (e.g. 0.4, 0.78)")

#-Calculating Summary Values----------------------------------------------------------------------
#Maximum value of phone users
max_proportion_phone_users <- latest_data$"Proportion_of_phone_users" %>% max(na.rm = TRUE)
#Minimum value of phone users
min_proportion_phone_users <- latest_data$"Proportion_of_phone_users" %>% min(na.rm = TRUE)
#Mean value of phone users
mean_proportion_phone_users <- latest_data$"Proportion_of_phone_users" %>% mean(na.rm = TRUE)
# Rounding mean value to 2 decimal places
mean_proportion_phone_users <- round(mean_proportion_phone_users, 2)

#-Creating relevant bar graphs with corresponding information ----------------------------------
# Bar Graph comparing Time of Day and the Type of Day
Comparision_Bar_graph <- latest_data + ggplot() +
  geom_bar(aes(y = Time_of_Day, fill = Day_Type)) + 
  labs(
    title     = "A Temporal Analysis of Human Migration Patterns", 
    subtitle  = "Comparing Time of Day and the Type of Day(Weekend or Weekday) of observational \n\ data entries in Auckland Transport", 
    caption   = "Source: Google Sheets",
    x         = "Number of entries", 
    y         = "Time of Day")

# Rounding data for proportion values to present a cleaner graph
latest_data$Proportion_of_phone_users <- round(latest_data$Proportion_of_phone_users,1)

# Bar Graph listing proportion of phone users during bus rides
Proportion_Bar_graph <- ggplot(data = latest_data) +
  geom_bar(aes(x=Proportion_of_phone_users), fill="#60695C") + 
  labs(
    title    = "Nobody looked out the window", 
    subtitle = "Proportion of commuters on the bus using their mobile devices (1 decimal place)", 
    caption  = "Source: Google Sheets",
    x        = "Proportion of phone users", 
    y        = "Number")
Proportion_Bar_graph
