library(shiny)
# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  #Find maximum Number of visitors
    m<-tplotdata[13,input$Museum]
  
  # calculating barplot ylim 
    million<-as.logical(round(m/1000000))
    hunthou<-as.logical(round(m/100000))
    tenthou<-as.logical(round(m/10000))
    thousan<-as.logical(round(m/1000))
    hundred<-as.logical(round(m/100))
    tendeka<-as.logical(round(m/10))
    max<-m+million*1000000+hunthou*100000+tenthou*10000+thousan*1000+hundred*100+tendeka*10
  
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
