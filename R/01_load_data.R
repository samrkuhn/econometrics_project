# NOTE: To load data, you must download both the extract's data and the DDI
# and also set the working directory to the folder with these files (or change the path below).
library(tidyverse)
library(plm)
library(lmtest)
if (!require("ipumsr")) stop("Reading IPUMS data into R requires the ipumsr package. It can be installed using the following command: install.packages('ipumsr')")

ddi <- read_ipums_ddi(here::here("data", "cps_00003.xml"))
cps_data <- read_ipums_micro(ddi) |> 
  janitor::clean_names()

grad_rates <- readr::read_csv(here::here("data", "school_enrollment_county.csv")) |> 
  janitor::clean_names() |> 
  select(!starts_with("annotation")) |> 
  mutate(across(.cols = !c(year:state), .fns = as.numeric)) |> 
  mutate(year = lubridate::ymd(year, truncated = 2L))

cps_data <- cps_data |> 
  filter(statefip == 29 | statefip == 40) |>
  mutate(state_factor = as_factor(lbl_clean(statefip))) |> 
  mutate(
    month = zap_ipums_attributes(month),
    date = lubridate::ymd(paste(year, month, "1"))
  )


#data manipulation

cps_data |> 
  filter(
    age == 4
  ) |> 
  mutate(
    time_dummy = if_else(year == 1998, 1, 0),
    treated_dummy = if_else(state_factor == "Oklahoma", 1, 0)
  )
