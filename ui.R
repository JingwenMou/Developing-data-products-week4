
library(shiny)

shinyUI(fluidPage(
    titlePanel("Mtcars MPG"),
    sidebarLayout(
        sidebarPanel(
            selectInput("x_axis", "x_axis",
                        c("displacement"="disp", 
                          "rear_axle_ratio"="drat",
                          "weight"="wt", 
                          "horsepower"="hp", 
                          "1/4 mile time"="qsec"))
            
        ),
        mainPanel(
            plotOutput("plot1")
        )
    )
))
