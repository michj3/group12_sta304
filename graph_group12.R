
cleaned_elections_data |>
  ggplot(aes(x = party)) + # aes abbreviates "aesthetics" 
  geom_bar()

cleaned_elections_data |>
  ggplot(aes(x = party)) +
  geom_bar() +
  theme_minimal() + # Make the theme neater
  labs(x = "Party", y = "Number of seats") # Make labels more meaningful