library(shiny)
# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Museum by Month"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("Month", "Month:", 
                    choices=colnames(tplotdata)),
        hr(),
        helpText("Data from ELSTAT")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("museumPlot")  
      )
      
    )
  )
)
