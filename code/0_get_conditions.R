#load packages
library(tidyverse)

#read in data
dta <- read_tsv('../data/original/drugLibTrain_raw.tsv')

#10 most common conditions

dta %>% 
  count(condition, sort=TRUE) %>%
  head(4) %>%
  select(condition) %>%
  write_csv('../data/derived/top_conditions.csv')

#create a csv which is a column of these conditions.
#Snakemake needs this is a .yml format.
#currently in .csv format
#this is what the makecog.sh file is doing 
