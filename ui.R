#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
        titlePanel("Predict MPG from the Number of Cylinders and Horsepower"),
        sidebarLayout(
                sidebarPanel(
                        h3("Input the Horsepower of the Car"),
                        numericInput("hp", "What is the horsepower of the car", min=50, max=600, value=160),
                        h3("Choose the Number of Cylinders using radiobuttons"),
                        radioButtons("cyl", "What is the number of cylinders of the car", choices=c("4","6","8"), selected = "4")
                        
                ),
                
                mainPanel(
                        
                        
                        h3("The Predicted MPG from the Model"),
                        textOutput("Pred")
                        
                )
                
                
        ) 
))
