#' plotmeasurements UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_plotmeasurements_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidRow(
      col_12(
        h3("Timeline"), 
        col_6(
          dateRangeInput(
            ns("date"), 
            "Choose start and date", 
            min = min(bloodpressuremeasurements$Date), 
            max = max(bloodpressuremeasurements$Date), 
            start = min(bloodpressuremeasurements$Date),
            end = max(bloodpressuremeasurements$Date)
          )
        ), 
        col_6(
          
        ),
        plotOutput(
          ns("plot")
        )
      )
    )
  )
}
    
#' plotmeasurements Server Function
#'
#' @noRd 
mod_plotmeasurements_server <- function(input, output, session){
  ns <- session$ns

  output$plot <- renderPlot({
    filter_and_draw(
      input$date[[1]],
      input$date[[2]]
    )
  })
}