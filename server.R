#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

shinyServer(function(input, output) {
        model=lm(mpg~cyl+hp, data=mtcars)
        
        modelpred=reactive({
                cylInput=as.numeric(input$cyl)
                hpInput=input$hp
                
                predict(model, newdata=data.frame(cyl=cylInput, hp=hpInput))
        })
        
        
        output$Pred=renderText({modelpred()
        })
})   
