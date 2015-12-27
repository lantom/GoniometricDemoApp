
# This is the user-interface definition of a Shiny web application.
# author: Tomas Lancinger
# date: 27 Dec 2015
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Goniometric Demo App"),

  br( "This is a sample application created within Coursera course Data Product."),
  
  br( "The aim is to make an application in Shiny, complying with following requirements: "),
  
  tags$ol(
    tags$li("Some form of input (widget: textbox, radio button, checkbox, ...)"), 
    tags$li("Some operation on the ui input in sever.R"), 
    tags$li("Some reactive output displayed as a result of server calculations")
  ),
  
  br( "The first requirement is handled by parametrization panel on below, the second and third
      requirements are fulfilled by gonimetric function selection and computation on server side."),
  
  br( "The application visualizes goniometric functions sin and cos with changeable parameters
      of frequency and amplitude."),
  
  # The control panel
  sidebarLayout(
    sidebarPanel(
      selectInput("fun", 
                  label = "Choose function",
                  choices = list("sin", "cos"),
                  selected = "sin"),
      sliderInput("frequency",
                  "Frequency:",
                  min = 1,
                  max = 10,
                  value = 1),
      sliderInput("amplitude",
                  "Amplitude:",
                  min = 1,
                  max = 10,
                  value = 1)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("gonioPlot")
    )
  )
))
