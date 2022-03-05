#######################
### TidyTuesday from World Freedom Index from 2022-02-22 ###
### Created by: Margarita Alfaro ###
### Created on: 2022-03-02 ###
##################################

### Load Libraries ###
library(tidyverse)
library(tidytuesdayR)
library(ggplot2)
library(here)

### load data ###
tuesdata <- tidytuesdayR::tt_load('2022-02-22') #extract data from the weekly tidytuesday
tuesdata <- tidytuesdayR::tt_load(2022, week = 8)

### data analysis ###
freedom <- tuesdata$freedom
ggplot(data = freedom, aes(x = year, y = PR)) +
  geom_bar(stat = "identity", width = 0.1, color = "red", fill = "red") + #add the graph, and the specific parameter for our line color
  labs(x = "Years", #select x axis
       y = "Political Rights", #select y axis
        title = "Political Rights from 1995 to 2020", #adds tittle
       caption = "Source: 2022-02-22 TidyTuesday Data Provided By UN and Freedom House")+ #add caption and insert the description where our data was extracted
  theme(plot.title = element_text(hjust = 0.5)) #changes size of the tittle

ggsave(here('TidyTuesday_2022_02_22/output',"Freedom.png"), width = 7, height = 6)

