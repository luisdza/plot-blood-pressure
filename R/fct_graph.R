#' Filter and plot blood pressure readings
#' 
#' @param start Start date for filter.
#' @param end End date for filter.
#' @return plot.
#' @importFrom dplyr filter
#' @importFrom ggplot2 ggplot aes geom_col theme_classic labs expand_limits geom_rect scale_color_manual geom_point
filter_and_draw <- function(start, end){
  res <- filter(bloodpressuremeasurements, as.POSIXct(Date) >= as.POSIXct(start) & as.POSIXct(Date) <= as.POSIXct(end))
  
  p <- ggplot(res,
              aes(x = Sys,
                  y = Dia,
                  colour = Category
              )
  )
  # Remove default values
  p <- p + theme_classic()
  # Label x and y axis and title
  p <- p +
    labs(
      x = "Systolic Pressure (mmHg)",
      y = "Diastolic Pressure (mmHg)",
      colour = "Time of day",
      title = "Blood pressure (on Coveram 5mg/5mg) - 29 April 2020 to 17 May 2020"
    ) +
    expand_limits(x = 0, y = 0) +
    expand_limits(x = 250, y = 150)
  
  # Backgrounds for each grade
  p <- p + geom_rect(xmin = 0, xmax = 250, ymin = 0, ymax = 150, fill = "#E40B06", color=NA, alpha = 1) #Grade 3
  p <- p + geom_rect(xmin = 0, xmax = 179, ymin = 0, ymax = 109, fill = "#ED7E08", color=NA, alpha = 1) #Grade 2
  p <- p + geom_rect(xmin = 0, xmax = 159, ymin = 0, ymax = 99, fill = "#F8BF78", color=NA, alpha = 1) #Grade 1
  p <- p + geom_rect(xmin = 0, xmax = 139, ymin = 0, ymax = 89, fill = "#BAFDB6", color=NA, alpha = 1) #Normal
  p <- p + geom_rect(xmin = 0, xmax = 129, ymin = 0, ymax = 84, fill = "#BAFDB6", color=NA, alpha = 1) #Optimal
  p <- p + scale_color_manual(values=c("darkblue", "lightblue"))
  p <- p + geom_point()
  p
}