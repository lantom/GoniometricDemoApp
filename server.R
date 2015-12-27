
# This is the server logic for a Shiny web application.
# author: Tomas Lancinger
# date: 27 Dec 2015
#

library(shiny)

shinyServer(function(input, output) {

  output$gonioPlot <- renderPlot({

    t = seq(0,10,.01)
    
    if (input$fun == "sin")
    {
      # sin
      y = input$amplitude*sin(input$frequency * t)
    } else {
      # cos
      y = input$amplitude*cos(input$frequency * t)
    }
    
    # draw the chart
    plot(t,y,type="l", xlab="x", ylab="")
    
  })

})
