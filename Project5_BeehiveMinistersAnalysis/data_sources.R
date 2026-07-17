library(tidyverse)
library(jsonlite)
library(rvest)

# Creating vector for file names
file_names <- list.files("html", full.names = T)

# Dunno what this does I think imports the function we created(from no skill of mine from scrape_html)
source("scrape_html.R")

# Creating dataset beehive
beehive <- map_df(file_names, scrape_search_results)
beehive <- distinct(beehive)
view(beehive, n=72)# Saving beehive Dataset as rds file
saveRDS(beehive, "beehive.rds")

# Saving minister names
minister_names <- unique(beehive$ministers)

# 90% sure it imports functions
source("get_wikipedia_infobox.R")

# Receiving minister names
minister_names <- beehive$ministers %>%
  str_replace_all("Hon|Rt Hon", "hi") %>%  # add hi before each name
  str_split("hi") %>%
  unlist() %>%
  str_trim() %>%
  str_subset("\\S")%>%
  unique()

# Stalking ministers wikipedia
minister <- map_df(minister_names, get_wikipedia_infobox) 
minister <- distinct(minister)

# Saving minister df into minister.rds
saveRDS(minister, "minister.rds")
