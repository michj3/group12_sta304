raw_elections_data <-
  read_csv(
    file = 
      "https://www.elections.ca/res/rep/off/ovr2021app/53/data_donnees/table_tableau11.csv",
    show_col_types = FALSE,
    skip = 0
  )

# We have read the data from the AEC website. We may like to save
# it in case something happens or they move it.
write_csv(
  x = raw_elections_data,
  file = "canadian_voting.csv"
)