library(shiny)
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Species prediction: This shiny app predicts species for the given Sepal Length/Width and Petal Length/Width"),
                sidebarPanel(
                        numericInput('sepal.length', 'Choose/Enter Sepal.Length Here:', 5, min = 0.1, max = 10, step = 0.1),
                        numericInput('sepal.width', 'Choose/Enter Sepal.Width Here:', 3.5, min = 0.1, max = 10, step = 0.1),
                        numericInput('petal.length', 'Choose/Enter Petal.Length Here:', 1.5, min = 0.1, max = 10, step = 0.1),
                        numericInput('petal.width', 'Choose/Enter Petal.Width Here:', 0.3, min = 0.1, max = 10, step = 0.1),
                        submitButton('Click Here to Predict')
                ),
                mainPanel(
                        h3('Results of prediction'),
                        h4('Predicted Species'),
                        verbatimTextOutput("prediction")
                )
        )
)