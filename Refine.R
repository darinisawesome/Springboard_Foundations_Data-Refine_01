#load necessary libraries
library(tidyverse)
library(dplyr)
library(readr)

#load original dataset to be cleaned
refine_original <- read_csv("~/Github/Springboard_Foundations_Data-Refine_01/refine_original.csv")
View(refine_original)

#change row name data manually by specific row
refine_original[1:6,1] <- "philips"
refine_original[7:13,1] <- "akzo"
refine_original[14:16,1] <- "philips"
refine_original[22:25,1] <- "unilever"

#sort alphabetically by company name
refine_original <- refine_original %>% arrange(company)