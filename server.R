library(shiny)
shinyServer(
  function(input, output) {
	
		output$myinputs <- renderPrint(
if (input$calc >= 1){
paste(as.character(input$n1),as.character(input$rb),as.character(input$n2))}
)

output$myresults <- renderPrint(
if (input$calc >= 1){
	if (as.character(input$rb) == "+"){
		input$n1+input$n2
	}
	else if (as.character(input$rb) == "-"){
		input$n1-input$n2	
	}
	else if (as.character(input$rb) == "*"){
		input$n1*input$n2	
	}
	else if (as.character(input$rb) == "/"){
		input$n1/input$n2	
	}
}
)
	
  }
)