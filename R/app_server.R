#' @import shiny
app_server <- function(input, output, session) {
  greetings <- c("hi", "howdy", "sup")
  observeEvent(input$hi, {
    index <- input$hi %% 3 + 1
    output$greet <- renderText(greetings[index])
  })
}
