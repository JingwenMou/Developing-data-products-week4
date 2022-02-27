library(shiny)
library(ggplot2)
data1 <- mtcars

shinyServer(function(input, output) {
    output$plot1 <- renderPlot({
        ggplot(data1, aes_string(x =input$x_axis, y = "mpg")) + geom_point(col = as.factor(data1$cyl))

    })

})
