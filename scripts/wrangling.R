library(dplyr)
temp <- 
  readRDS(here::here("data","temporarias.RDS"))
perm <- 
  readRDS(here::here("data","permanentes.RDS"))
psr <- 
  readRDS(here::here("data","psr.RDS"))

psr %>% glimpse()             
perm %>% glimpse()             
temp %>% glimpse()             
