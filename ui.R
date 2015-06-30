library(shiny)
# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Museum by Month of Year 2014"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("Museum", "Museum:", 
                    choices=colnames(tplotdata)),
        hr(),
        helpText("Data from ELSTAT")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("museumPlot"),
        
        h1("First level title")

        
      )
      
    )
  )
)
