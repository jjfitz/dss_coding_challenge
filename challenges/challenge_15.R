# Challenge 15 - "Time to Harvest"
# 10 Points + 8 Bonus Points

# Challenge Description:
# In recent years R has come out with several packages to bring it into a more contemporary general purpose programming language. 
# Your professor wants to study the patterns of alcohol prohibition in the 1900's.
# You can't seem to find any R packages that already provide this data, but you have found a website that contains a table.
# Knowing you're a true programmer you don't want to take the time to copy the data into a .csv file by hand
# You decide to look into web scraping so that you can programmtically snatch this data. 
# Your goal is to scrape the data and put it in tidy long format exactly as demonstrated in "data/tidy_data_15.txt".

# Bonus: Recreate the graphic found at: "data/graphic_challenge_15.png"

# Input Data: https://pubs.niaaa.nih.gov/publications/Surveillance95/tab1_10.htm

# Your Code Here:
library(tidyverse)
library(lubridate)
library(rvest)

tab <- read_html('https://pubs.niaaa.nih.gov/publications/Surveillance95/tab1_10.htm')

tab <- html_table(html_nodes(tab, "table")[[1]])

# getting the data
tab %<>%
  filter(Year != "Prohibition") %>%
  mutate(consumption = `All beverages`) %>%
  select(-`All beverages`) %>%
  as.tibble() %>%
  gather(type, consumption, -Year)

# making the graph
tab %>%
  # group_by(Year, type) %>%
  ggplot(aes(Year, as.numeric(consumption), color = type)) +
  geom_point() +
  geom_line(aes(color = type))

# Answer:

# # A tibble: 352 x 3
# Year  type  consumption
# <chr> <chr> <chr>      
#   1 2010  Beer  1.13       
# 2 2009  Beer  1.17       
# 3 2008  Beer  1.20       
# 4 2007  Beer  1.21       
# 5 2006  Beer  1.20       
# 6 2005  Beer  1.19       
# 7 2004  Beer  1.21       
# 8 2003  Beer  1.21       
# 9 2002  Beer  1.23       
# 10 2001  Beer  1.23       
# # ... with 342 more rows





