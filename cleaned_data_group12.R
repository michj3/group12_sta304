raw_elections_data <-
  read_csv(
    file = "canadian_voting.csv",
    show_col_types = TRUE
  )

cleaned_elections_data <-
  clean_names(raw_elections_data)

cleaned_elections_data <-
  cleaned_elections_data |>
  select(
    electoral_district_name_nom_de_circonscription,
    elected_candidate_candidat_elu
  )

cleaned_elections_data <-
  cleaned_elections_data |>
  rename(
    electoral_district_name = electoral_district_name_nom_de_circonscription,,
    elected_candidate = elected_candidate_candidat_elu
  )

head(cleaned_elections_data)

cleaned_elections_data <-
  cleaned_elections_data |>
  separate(
    col = elected_candidate,
    into = c("Other", "party"),
    sep = "/"
  ) |>
  select(-Other)

cleaned_elections_data <-
  cleaned_elections_data |>
  mutate(
    party =
      case_match(
        party,
        "Libéral" ~ "Liberal",
        "Conservateur" ~ "Conservative",
        "Bloc Québécois" ~ "Bloc Québécois",
        "Nouveau Parti démocratique" ~ "New Democratic",
        "Parti Vert" ~ "Green",

      )
  )
