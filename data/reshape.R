# Reshape data

library(tidyverse)
library(reshape2)

# Read data
fileName <- "data/2014.csv"
df <- read_csv(fileName)

# Combine names
df <- df %>% 
  unite("name", c("First Name", "Last Name"), sep = " ") %>%
  unite("big1", c("BigSib1First", "BigSib1Last"), sep = " ") %>%
  unite("big2", c("BigSib2First", "BigSib2Last"), sep = " ") %>%
  unite("big3", c("BigSib3First", "BigSib3Last"), sep = " ") %>%
  unite("big4", c("BigSib4First", "BigSib4Last"), sep = " ") %>%
  melt(id.vars = c("Year", "name")) %>% # Make data long
  filter(value != "NA NA") %>% # Remove NA values created by unite()
  select(-variable) # Remove redundant column





