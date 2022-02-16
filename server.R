library(shiny)
library(datasets)

shinyServer(function(input, output) {
  
  formula <- reactive({
    paste("mpg ~", input$variable)
  })
  
  output$caption <- renderText({
    formula()
  })

  fit <- reactive({
    lm(as.formula(formula()), data=mtcars)
  })
  
  output$fit <- renderPrint({
    summary(fit())
  })
  
  output$Plot <- renderPlot({
    with(mtcars, {
      plot(as.formula(formula()))
      abline(fit(), col=2)
    })
  })
  
})