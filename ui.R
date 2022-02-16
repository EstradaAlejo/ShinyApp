library(shiny)

shinyUI(
  navbarPage("Shiny Application",
             tabPanel("Plots",
                      fluidPage(
                        titlePanel("The relationship between variables and miles per gallon (MPG)"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("Number of cylinders" = "cyl",
                                          "Displacement (cu.in.)" = "disp",
                                          "Gross horsepower" = "hp",
                                          "Rear axle ratio" = "drat",
                                          "Weight (lb/1000)" = "wt",
                                          "1/4 mile time" = "qsec",
                                          "V/S" = "vs",
                                          "Transmission" = "am",
                                          "Number of forward gears" = "gear",
                                          "Number of carburetors" = "carb"
                                        )),
                            
                
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            plotOutput("Plot"),
                            verbatimTextOutput("fit"))
                            )
                          
                        
                      )
             ),
             tabPanel("Analysis",
                      h2("Linear relation betwwen miles per gallon and variables in the dataset mtcars"),
                      hr(),
                      helpText("Motor Trend is a magazine about the automobile industry. Looking at a data set of a
                               collection of cars (mtcars). We are interested in knowing the linear relationship between miles
                               per gallon and other variables associated with the data set. For that we train a linear
                               regression model between the variable mpg (miles per gallon) and another desired
                               variable (selected by the user), This gives us a visualization of the regression model
                               and we can draw conclusions."),
                      h3("Important"),
                      p("A data frame with 32 observations on 11 variables."),
                      
             ),
             tabPanel("About the data",
                      h2("Motor Trend Car Road Tests"),
                      hr(),
                      h3("Description"),
                      helpText("The data was extracted from the 1974 Motor Trend US magazine,",
                               " and comprises fuel consumption and 10 aspects of automobile design and performance",
                               " for 32 automobiles (1973-74 models)."),
                      h3("Format"),
                      p("A data frame with 32 observations on 11 variables."),
                      
                      p("  [, 1]   mpg         Miles/(US) gallon"),
                      p("  [, 2]	 cyl	 Number of cylinders"),
                      p("  [, 3]	 disp	 Displacement (cu.in.)"),
                      p("  [, 4]	 hp	 Gross horsepower"),
                      p("  [, 5]	 drat	 Rear axle ratio"),
                      p("  [, 6]	 wt	 Weight (lb/1000)"),
                      p("  [, 7]	 qsec	 1/4 mile time"),
                      p("  [, 8]	 vs	 V/S"),
                      p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                      p("  [,10]	 gear	 Number of forward gears"),
                      p("  [,11]	 carb	 Number of carburetors"),
                      
                      h3("Source"),
                      
                      p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.")
             ),
             tabPanel("Github repository",
                      a("https://github.com/ludovicbenistant?tab=repositories"),
                    
             )
  )
)
