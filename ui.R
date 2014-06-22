library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Simple Calculator"),
  sidebarPanel(
    h5('First Number'),	
    sliderInput('n1', 'Select First Number',value = 3, min = 1, max = 20, step = 1),
    h5('Second Number'),
    sliderInput('n2', 'Select Second Number',value = 3, min = 1, max = 20, step = 1),
    h5('Select Operation'),
    radioButtons("rb", "Operation:",
                      c("Add"="+","Subtract" = "-","Multiply" = "*", "Divide" = "/")),
    actionButton("calc","Calculate")
  ),
  mainPanel(
    h4('Results'),
    h5(verbatimTextOutput("myinputs")),
    h5(verbatimTextOutput("myresults")),
    h4('Documentation'),
    p('This simple calculator is very easy to use. It take two numbers, you can move slider to select numbers. It has four operaions, +, -, *, /. Select numbers and click on 	calcaute to see results')
  )
))