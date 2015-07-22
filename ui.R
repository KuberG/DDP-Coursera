#ui.R for Currency Converter Tool

library(markdown)

shinyUI(navbarPage("Currency Converter Tool",
        tabPanel("Introduction",
                 includeMarkdown("about.md")
                ),
        tabPanel("Convert",
                 sidebarLayout(
                    sidebarPanel(
                      numericInput('amount', 'Enter an Amount', 0, min = 0, max = 20000),
                      numericInput('exchangeRate', 'Enter an Exchange Rate', 0, min = 0, max = 20000),
                      submitButton('Submit')
                    ),
                    mainPanel(
                      h3('Exchange Value'),
                      verbatimTextOutput("exchangeValue")
                    )
                 )
                 
                 
                 )
        )
  )