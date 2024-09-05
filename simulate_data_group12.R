install.packages("tidyverse")
install.packages("janitor")

library(tidyverse)
library(janitor)

set.seed(3)
simulated_data <-
  tibble(
    "Division" = 1:338,
    # Randomly pick an option, with replacement, 338 times
    "Party" = sample(
      x = c("Liberal", "Conservative", "Bloc Quebecois", "New Democratic", "Green"),
      size = 338,
      replace = TRUE
    )
  )

simulated_data
