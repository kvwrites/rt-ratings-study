library(tidyverse)
library(dplyr)
library(readr)
library(lubridate)
library(ggplot2)

## Loading dataset

rotten_tomatoes_movies <- read_csv("Capstone Study/rotten_tomatoes_movies.csv")
head(rotten_tomatoes_movies)

## Adding Release_Year column 

rotten_tomatoes_movies$release_year <- as.numeric(as.character(rotten_tomatoes_movies$original_release_date, format="%Y"))

## Filtering out films released before 1995

rt_ratings <- (rotten_tomatoes_movies) %>% 
  select(movie_title, release_year, content_rating, production_company, tomatometer_rating, tomatometer_count, tomatometer_top_critics_count) %>% 
  filter(release_year >1994)

## Calculating Average Ratings for Entire Dataset

overall_rating <- (rt_ratings) %>%
  group_by(release_year) %>% 
  summarize(avg_rating= mean(tomatometer_rating, na.rm=TRUE), avg_total_critics= mean(tomatometer_count, na.rm=TRUE), avg_top_critics= mean(tomatometer_top_critics_count, na.rm=TRUE), total_films = length(release_year)) %>% 
  mutate_if(is.numeric, round, digits = 1)

## Creating Sample Set for Further Analysis (7 major studios, 4 independent studios, 2 former indie studios that merged with major studios)

filtered_ratings <- (rt_ratings) %>%
  filter(grepl('Warner|Paramount|Disney|Fox|Focus|IFC|Lions|Universal|New Line|A24|Magnolia|Sony|MGM|Marvel', production_company)) %>% 
  filter(production_company != "Fox Meadow Films") %>% 
  filter(production_company != "Blue Fox Entertainment")

## Calculating Average Ratings for Sample Set

average_rating <- (filtered_ratings) %>%
  group_by(release_year) %>% 
  summarize(avg_rating= mean(tomatometer_rating, na.rm=TRUE), avg_total_critics= mean(tomatometer_count, na.rm=TRUE), avg_top_critics= mean(tomatometer_top_critics_count, na.rm=TRUE), total_films = length(release_year)) %>% 
  mutate_if(is.numeric, round, digits = 1)

## Categorizing Sample into Three Categories - Indie, Major and Former Indie Studios

indie_ratings <- (filtered_ratings) %>% 
  filter(grepl('A24|Magnolia|IFC|Lions', production_company)) %>% 
  group_by(release_year) %>% 
  summarize(avg_rating= mean(tomatometer_rating, na.rm=TRUE), avg_total_critics= mean(tomatometer_count, na.rm=TRUE), avg_top_critics= mean(tomatometer_top_critics_count, na.rm=TRUE), total_films = length(release_year)) %>% 
  mutate_if(is.numeric, round, digits = 1)

studio_ratings <- (filtered_ratings) %>% 
  filter(grepl('Warner|Paramount|Disney|Fox|Universal|Sony|MGM|Marvel', production_company)) %>% 
  group_by(release_year) %>% 
  summarize(avg_rating= mean(tomatometer_rating, na.rm=TRUE), avg_total_critics= mean(tomatometer_count, na.rm=TRUE), avg_top_critics= mean(tomatometer_top_critics_count, na.rm=TRUE), total_films = length(release_year)) %>% 
  mutate_if(is.numeric, round, digits = 1)

new_focus_ratings <-(filtered_ratings) %>% 
  filter(grepl('New Line|Focus', production_company)) %>% 
  group_by(release_year) %>% 
  summarize(avg_rating= mean(tomatometer_rating, na.rm=TRUE), avg_total_critics= mean(tomatometer_count, na.rm=TRUE), avg_top_critics= mean(tomatometer_top_critics_count, na.rm=TRUE), total_films = length(release_year)) %>% 
  mutate_if(is.numeric, round, digits = 1)


