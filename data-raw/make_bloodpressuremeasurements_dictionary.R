dictionary <- dplyr::bind_rows(
  c(name = "country", description = "Date"),
  c(name = "year", description = "Time"),
  c(name = "population", description = "Category"),
  c(name = "country", description = "Sys"),
  c(name = "year", description = "Dia"),
  c(name = "population", description = "Pulse")
)

write.csv(dictionary, "data-raw/dictionary.csv", row.names = FALSE)