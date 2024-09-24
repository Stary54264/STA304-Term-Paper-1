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
number_of_dates <- 1000

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    water_temperature = rnorm(number_of_dates, 15, 7)
  )


#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")