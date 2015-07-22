#server.R for Currency Converter Tool
ExpensePerPersonFunc <- function(amount,exchangeRate) amount * exchangeRate

shinyServer(
  function(input, output) {
    output$exchangeValue <- renderPrint(input$amount*input$exchangeRate)
    output$summary <- renderPrint(input$amount*input$exchangeRate)
    
  }
)