#' @import shiny
app_ui <- function() {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    fluidPage(
      h1("shinytestexample"),
      actionButton("hi", "Hi"),
      textOutput("greet")
    )
  )
}

#' @import shiny
#' @keywords internal
golem_add_external_resources <- function() {
  addResourcePath(
    "www", system.file("app/www", package = "shinytestexample")
  )
  
  tags$head(
    golem::activate_js(),
    golem::favicon(),
    tags$script(src = "www/readCookie.js")
  )
}
