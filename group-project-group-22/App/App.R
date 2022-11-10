library(shiny)
library(shinythemes)
library(shinydashboard)

load('Data/total_medals.Rdata')




ui <- dashboardPage(
  dashboardHeader(title = "Olympics Data Analysis",
                  tags$li(class = "dropdown", actionButton("browser", "browser"),
                          tags$script("$('#browser').hide();")),
                  dropdownMenuOutput("messageMenu")),
  dashboardSidebar(
    # we need to use special function instead of uiOutput
    sidebarMenuOutput("side_menus"),
    sidebarMenu(
      menuItem('Introduction',
               tabName = 'Introduction'),
      menuItem('Olympics Medal Tally',
               tabName = 'Olympics Medal Tally'),
      menuItem('Partucular Sports',
               tabName = 'Partucular Sports'),
      menuItem('India performance',
               tabName = 'India performance'),
      menuItem('Blah Blah Blah',
               tabName = 'Blah Blah Blah'))
  ),
  body <- dashboardBody(
  )
    
)


server <- function(input,output){}

shinyApp(ui = ui,server = server)
