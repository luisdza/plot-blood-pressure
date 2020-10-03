## code to prepare `bloodpressuremeasurements` dataset goes here

bloodpressuremeasurements <- readr::read_csv("data-raw/bloodpressuremeasurements.csv")

usethis::use_data(bloodpressuremeasurements, overwrite = TRUE)
