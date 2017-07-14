#load necessary libraries
library(tidyverse)
library(dplyr)
library(readr)
library(tidyr)

#load original dataset to be cleaned
refine_original <- read_csv("~/Github/Springboard_Foundations_Data-Refine_01/refine_original.csv")
View(refine_original)

#change row name data manually by specific row
refine_original[1:6,1] <- "philips"
refine_original[7:13,1] <- "akzo"
refine_original[14:16,1] <- "philips"
refine_original[22:25,1] <- "unilever"

#sort alphabetically by company nameproduct
refine_original <- refine_original %>% 
  arrange(company)

#separate "Product code / number" column into product_code and product number and remove it aftewards
refine_original <- refine_original %>% 
  separate('Product code / number', c("product_code","product_number"),sep = "-", remove=TRUE)

#add logical operator for what type of device each row contains
refine_original <- refine_original %>% 
  mutate(Smartphone = product_code == 'p') %>% 
  mutate(TV = product_code == 'v') %>% 
  mutate(Laptop = product_code == 'x') %>% 
  mutate(Tablet = product_code == 'q')

