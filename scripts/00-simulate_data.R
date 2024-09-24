#### Preamble ####
# Purpose: Simulates data
# Author: Yanzun Jiang
# Date: 24 September 2024
# Contact: yanzun.jiang@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(1009377666)

# Define the start and end date
start_date <- as.Date("2008-01-01")
end_date <- as.Date("2023-12-31")

# Set the number of random dates you want to generate
sim <- 1000

data <-
  tibble(
    date = as.Date(
      runif(sim, as.numeric(start_date), as.numeric(end_date)),
      origin = "1970-01-01"
    ),
    air_temp = round(rnorm(sim, 20, 5), 2),
    rain = sample(c("Yes", "No"), sim, p = c(0.35, 0.75), replace = TRUE),
    water_temp = round(rnorm(sim, 15, 5), 2),
    water_fowl = round(rpois(sim, 30))
  )


#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")
