library(dplyr)
library(purrr)

readRDS(here::here("data","permanentes.RDS"))

list.files(here::here("data","permanente"),
           pattern = "*.RDS") %>% 
  map_df(readRDS)



my_tbl <- read.csv(
    here::here("data","permanente","Base_Permanente.csv"),
      header = TRUE, sep = ";", fileEncoding="latin1") 
my_tbl %>% 
  dplyr::filter(UF_N == 43) %>% 
  saveRDS(here::here("data","permanentes.RDS"))



my_tbl <- read.csv(
  here::here("data","temporaria","Base_Temporarias.csv"),
  header = TRUE, sep = ";", fileEncoding="latin1") 

my_tbl |> 
  #dplyr::mutate(uf = substr(Cd_,1,2)) |>
  dplyr::filter(UF_N == 43) |>
  saveRDS(here::here("data","temporarias.RDS"))





my_tbl <- rbind(
  read.csv(
  here::here("data","PSR","psrdadosabertos2017a2021-08.csv"),
  header = TRUE, sep = ";", fileEncoding="latin1"),
  read.csv(
    here::here("data","PSR","psrdadosabertos2006a2016csv.csv"),
    header = TRUE, sep = ";", fileEncoding="latin1")
  )

my_tbl |>
  #dplyr::mutate(uf = substr(Cd_,1,2)) |>
  dplyr::filter(SG_UF_PROPRIEDADE == "RS") |>
  saveRDS(here::here("data","psr.RDS"))


