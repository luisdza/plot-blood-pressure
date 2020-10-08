## code to prepare `bloodpressuremeasurements` dataset goes here
#' Blood pressure measurements.
#'
#' An example of blood pressure measurements
#'
#' @format A data frame with 42 rows and 6 variables:
#' 
bloodpressuremeasurements <- readr::read_csv("data-raw/bloodpressuremeasurements.csv")

usethis::use_data(bloodpressuremeasurements, overwrite = TRUE)
