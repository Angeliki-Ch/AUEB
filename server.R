library(shiny)
# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  #Find maximum Number of visitors
  
  # Fill in the spot we created for a plot
  output$museumPlot <- renderPlot({
    
    # Render a barplot
    barplot(tplotdata[-13,input$Month], 
            main=input$Month,
            ylab="Number of Visitors",
            xlab="Month",
            col="violetred")
  })
})
