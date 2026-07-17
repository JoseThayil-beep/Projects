
# Loading Tidyverse Library
library(tidyverse)
library(lubridate)


# Reading relevant CSV file and then renaming columns to make access and usability of the data frame easier
logged_data <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vSUC04OdqkByKtoLhiOpbvoyzK17XSsSuEJY2pzDWmv-W71In0ZaZWVGkx2f3buUVVrWScmtoXqQjeR/pub?output=csv") %>%
  rename(
      timestamp   = Timestamp,
      day_type    = "Are you taking the bus on a weekday or weekend?",
      time_of_day = "What is the time of day?",
      proportion  = "Of the people you can currently see around you, what proportion of people are using a mobile device? Remember to include yourself in this calculation! (e.g. 0.4, 0.78)")



# --- PLOT 1----------------------------------------------------

# Creating summarised data frame = "cleaned_data1" with values of mean proportions and time_of_day to create a column chart
cleaned_data1 <- logged_data %>%
  mutate(
    # Using Regex functions to clean data BECAUSE I can't use case_when as my group member used        that method - This was really hard 😢
    time_of_day = str_remove_all(time_of_day, "[[:digit:]]") %>%
      str_remove_all("[[:punct:]]") %>%
      str_remove_all("am|pm") %>%
      str_trim()) %>%
  # Grouping data by time_of_day to create bar chart
  group_by(time_of_day) %>%
    # Summarising values
    summarise(mean_proportions = mean(proportion)) %>%
  # Make sure all 5 time catergories are included
  slice(1:5)

# Setting x and y axis for ggplot
plot1 <- ggplot(cleaned_data1, aes(x = factor(time_of_day,
                        # Ordering based from early morning to late evening
                        levels = c("Early morning", "Morning", 
                                   "Afternoon", "Evening", "Late evening")),
             y = mean_proportions, 
             fill = time_of_day)) + 
  geom_col() +
  # Using colour scheme cause Liza hates the colour the gray
  scale_fill_manual(values = c("Early morning" = "#1D9E75", 
                               "Morning" = "#D85A30",
                               "Afternoon" = "#534AB7",
                               "Evening" = "#BA7517",
                               "Late evening" = "#993556")) + 
  # Throwback to Project 2 graph and the improvement in data visualisation
  labs(title = "Nobody Looked Out the Window",
       subtitle = "Proportion of phone users in public transport(Now arranged by TIME OF DAY!!)",
       x = "Time of Day",
       y = "Average Proportion of Phone Users") + 
  # Removing legend so data visualization fills the screen
  guides(fill = "none") + 
  theme_minimal()
ggsave("plot1.png")
# --------------------------------------------------------------



# --- PLOT 2----------------------------------------------------

# Calculating overall mean proportion to use as reference line (Lab 4A use case 3)
mean_proportions <- logged_data$proportion %>%
  mean(na.rm = TRUE)

# Density plot showing distribution of phone users across times of day
plot2 <- ggplot(logged_data, aes(x = proportion, fill = time_of_day)) +
  # Adjusting smoothness of density curves and transparency for overlap
  geom_density(alpha = 0.4, adjust = 1.2) +
  # Matching colour scheme from plot1 (using original time_of_day labels)
  scale_fill_manual(
    values = c("Early morning (5 - 9 am)" = "#1D9E75", 
               "Morning (9 am - 12 pm)"   = "#D85A30",
               "Afternoon (12 pm - 5 pm)" = "#534AB7",
               "Evening (5 pm - 9 pm)"    = "#BA7517",
               "Late evening (9 pm - 5 am)" = "#993556")) +
  labs(title    = "How many nobodies looked out the window",
       subtitle = "Density graph of phone users",
       x        = "Proportion using devices",
       y        = "Density",
       caption  = "Purple line signifies overall mean value across all times",
       fill = "Time of Day") +
  # Overlaying mean reference line (second data source on same plot - Lab 4A use case 3)
  geom_vline(xintercept = mean_proportions,
             colour = "#51087E",
             linewidth   = 2) +
  theme_minimal()
ggsave("plot2.png")
#---------------------------------------------------------------


# --- PLOT 3----------------------------------------------------


# Creating cleaned_data3 using lubridate
cleaned_data3 <- logged_data %>%
  # Converting timestamp using mdy_hms(coz month-day-year, hour-minute-second) then extracting day of week
  # label = TRUE gives "Mon", "Tue" etc. instead of numbers
  mutate(timestamp   = mdy_hms(timestamp),
         day_of_week = wday(timestamp, label = TRUE)) %>%
  # Arranging by day_of_week using wday()
  arrange(day_of_week)

# Box plot showing spread of phone user proportions for each day we collected data
plot3 <- ggplot(cleaned_data3, aes(x = day_of_week, y = proportion, fill = day_of_week)) +
  # geom_boxplot
  geom_boxplot() +
  # Only colouring days we have data for - Should have collected more
  scale_fill_manual(
    values = c("Sun" = "#1D9E75", 
               "Mon" = "#D85A30",
               "Thu" = "#534AB7",
               "Fri" = "#BA7517")) +
  labs(title    = "Nobody Looked Out the Window Part 3",
       subtitle = "Distribution of phone users by day of week",
       x        = "Day of week",
       y        = "Proportion of phone users") +
  # Removing legend for clean look
  guides(fill = "none") +
  theme_minimal()
ggsave("plot3.png")

# --------------------------------------------------------------