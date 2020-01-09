#' @import shiny
app_server <- function(input, output, session) {
  syn <- synapse$Synapse()
  session$sendCustomMessage(type = "readCookie", message = list())

  ## Show message if user is not logged in to synapse
  unauthorized <- observeEvent(input$authorized, {
    showModal(
      modalDialog(
        title = "Not logged in",
        HTML("You must log in to <a target=\"_blank\" href=\"https://www.synapse.org/\">Synapse</a> to use this application. Please log in, and then refresh this page.") # nolint
      )
    )
  })

  observeEvent(input$cookie, {
    syn$login(sessionToken = input$cookie)
    output$loggedin <- renderText("Logged in")

    greetings <- c("hi", "howdy", "sup")
    observeEvent(input$hi, {
      index <- input$hi %% 3 + 1
      output$greet <- renderText(greetings[index])
    })
  })
}
