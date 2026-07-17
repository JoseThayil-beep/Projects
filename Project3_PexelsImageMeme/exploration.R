#---Part 0 -----------------------------------------------------------------------------------------------------------


# Loading Libraries
library(tidyverse)
library(httr)
library(magick)

#---Part A and B ------------------------------------------------------------------------------------------------------


# Naming the Variables
api_key <- "T2tm2PrPdSCmTFCyvbcTt1FzMAEwRaSDCwUtbkU9EaufnOF5LlF9VbbS"

url <- "https://api.pexels.com/v1/search?query=cool+jeans&per_page=80"

response <- httr::GET(url, 
                      add_headers(Authorization = api_key))

data <- httr::content(response, 
                      as = "parsed", 
                      type = "application/json")

photo_data <- tibble(photos = data$photos) %>%
  unnest_wider(photos) %>%
  unnest_wider(src)

##---Part C -----------------------------------------------------------------------------------------------------------


# Creating data frame selected_photos from data frame photo_data
selected_photos <- photo_data %>%
    # Creating a new column for orientation - application of ifelse() o_O
    mutate(orientation = ifelse(width > height,"landscape", "portrait"),
    # Creating a new column for the photographer's names in lower case for uniformity
           photographer_lower = str_to_lower(photographer),
    # Creating a new column for the aspect ratio of images 
           aspect_ratio = signif(width / height,2)) %>%
  # Filtering for photos with height 4000px or under - mainly did this to get the 20 pictures mark
  filter(height <= 4000)

# Saving document as CSV
write_csv(selected_photos, "selected_photos.csv")

#---Part D -----------------------------------------------------------------------------------------------------------



# Summary median width values for data frame selected_photos
median_width <- selected_photos$width %>%
  median(na.rm = T)
# Summary median height values for data frame selected_photos
median_height <- selected_photos$height %>%
  median(na.rm = T)
# Number of landscape photos in the data frame selected_photos
count_landscape <- sum(selected_photos$orientation == "landscape", na.rm = T)
# Number of portrait photos in the data frame selected_photos
count_portrait <- sum(selected_photos$orientation == "portrait", na.rm = T)
  

# Grouped Summary Values for number of data points organised by Categorical variable: orientation
grouped_count <- selected_photos %>%
  group_by(orientation) %>%
  summarise(num_pictures = n())

# Grouped Summary Values for total median width organised by Categorical variable: orientation
grouped_width <- selected_photos %>%
  group_by(orientation) %>%
  summarise(median_width = median(width, na.rm = T))

# In-line R-code variables for median width landscape
median_width_landscape <- grouped_width %>%
  filter(orientation == "landscape") %>%
  pull(median_width)

# In-line R-code variables for median width portrait
median_width_portrait <- grouped_width %>%
  filter(orientation == "portrait") %>%
  pull(median_width)

#---Part E -----------------------------------------------------------------------------------------------------------

# Setting the meme scene(I spent way too much time on this)
img1 <- image_read(selected_photos$large[1]) %>% image_scale("600x400!")
img2 <- image_read(selected_photos$large[3]) %>% image_scale("600x400!")
img3 <- image_read(selected_photos$large[5]) %>% image_scale("600x400!")

# Odd Image Out
img_oddone <- image_read(selected_photos$large[8]) %>% image_scale("600x400!")

# Annotating each frame with the meme text
img1 <- image_annotate(img1,
                       text = "everyone wearing jeans...",
                       gravity = "north",
                       size = 40,
                       color = "black")
img2 <- image_annotate(img2,
                       text = "jeans. jeans. jeans.",
                       gravity = "north",
                       size = 40,
                       color = "white")
img3 <- image_annotate(img3,
                       "always jeans.",
                       gravity = "north",
                       size = 40,
                       color = "white")
img_oddone <- image_annotate(img_oddone,
                             "Me: I'm nothing like the rest of yall",
                             gravity = "north",
                             size = 40,
                             color = "yellow")

# Combining images so that I can animate them into a gif
meme_gif <- c(img1, img2, img3, img_oddone) %>%
  image_animate(fps = 0.5)
# Saving my new gif as creativity.gif
image_write(meme_gif, "creativity.gif")