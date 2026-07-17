# - Part 0 --------------------------------------------------------------------
library(tidyverse)
library(rvest)
library(jsonlite)
library(magick)
# Load datasets
beehive <- readRDS("beehive.rds")
minister <- readRDS("minister.rds")
# -----------------------------------------------------------------------------

# - Part 1 --------------------------------------------------------------------
# Cleaning the data
minister_names <- beehive$ministers %>%
  str_replace_all("Hon|Rt Hon", "hi") %>%  # add hi before each name
  str_split("hi") %>%
  unlist() %>%
  str_trim() %>%
  str_subset("\\S")%>%
  unique()

beehive_clean <- beehive %>%
  separate_rows(portfolios, sep = "\n") %>%
  mutate(portfolios = str_trim(portfolios)) %>%
  filter(str_detect(portfolios, "\\S"))

# Check
count(beehive_clean, portfolios)

# Count
portfolio_counts <- beehive_clean %>%
  count(ministers, portfolios, name = "n_releases") %>%
  group_by(ministers) %>%
  filter(sum(n_releases) >= 3) %>%
  ungroup() %>%
  mutate(ministers = fct_reorder(ministers, n_releases, sum))

# Plot
ggplot(portfolio_counts,
       aes(x = n_releases, y = ministers, fill = portfolios)) +
  geom_col() +
  scale_fill_brewer(palette = "Set2") +
  labs(
    title    = "Beehive Releases by Minister and Portfolio (2020–2023)",
    subtitle = "Labour government — Education and related portfolios",
    x        = "Number of releases",
    fill     = "Portfolio",
    caption  = "Data: beehive.govt.nz | Minister info: Wikipedia"
  ) +
  theme_minimal(base_size = 12)

ggsave("final_graph.png")

# Very Important
cat_image <- image_read("cat.jpg")
