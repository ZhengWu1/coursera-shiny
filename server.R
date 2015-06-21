library(shiny)
data(iris)
training <- iris
library(caret)
library(rpart)
load("model.RData")
shinyServer(
        function(input, output) {
                output$prediction <- renderPrint({as.character(predict(model, newdata = data.frame(
                        Sepal.Length = input$sepal.length, Sepal.Width = input$sepal.width, 
                        Petal.Length = input$petal.length, Petal.Width = input$petal.width
                )))})
        }
)