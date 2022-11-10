library(shinydashboard)
library(shiny)

ui <- dashboardPage(
  dashboardHeader(title = "Basic Dashboard",
                  disable = F),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Tokyo", tabName = "dashboard", icon = icon("bar-chart-o"),
               badgeLabel = "new", badgeColor = "teal"),
      menuItem("Widgets", tabName = "widgets", icon = icon("table")),
      menuItem("Source code", icon = icon("file-code-o"),
               href = "https://github.com/arnav39/")
      )),
  dashboardBody(
    tabItems(
      tabItem(tabName = "dashboard",
              fluidRow(
                box(
                  title = "Controls",
                  sliderInput("slider",
                              "Number of Observations : ",
                              min = 1,
                              max = 100,
                              value = 50),
                  height = 300, width = 12)
              ),
              fluidRow(
                box(plotOutput("plot1"),
                    width = 12, height = 300)
                )
              ),
      tabItem(tabName = "widgets",
              h2("Widgets Tab content"))
      )
    )
)

server <- function(input, output){
  set.seed(122)
  histdata <- rnorm(500)
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
}

shinyApp(ui, server)