bootstrap(theme = "yeti")

navbarPage("Rhian's CPD",
           tabPanel("Add CPD activity",
                    fluidRow(
                        column(4,
                               wellPanel(
                                   textInput("activity_name",
                                             label = h3("Activity"),
                                             value = "")
                               )
                        ), # End: column
                        column(4,
                               wellPanel(
                                   radioButtons("activity_type", label = h3("Activity type"),
                                                choices = list("Work based learning" = 1,
                                                               "Professional activity" = 2,
                                                               "Formal/educational" = 3, 
                                                               "Self-directed learning" = 4, 
                                                               "Other" = 5), 
                                                selected = NULL)
                               )
                        ),
                        column(4,
                               wellPanel(
                                   checkboxGroupInput("activity_tags",
                                                      label = h3("Tags"), 
                                                      choices = list("R-Ladies meetup" = 1,
                                                                     "RSS meeting" = 2,
                                                                     "PyData Meetup" = 3),
                                                      selected = NULL)
                               )
                        ) # End: column# End: column
                    ), # End: fluidRow
                    fluidRow(
                        column(4,
                               wellPanel(
                                   textAreaInput("activity_dscription",
                                                 label = h3("Activity Description"),
                                                 value = "",
                                                 width = "400px",
                                                 height = "400px") 
                               )
                        ), # End: column
                        column(4,
                               wellPanel(
                                   dateRangeInput("dates",
                                                  label = h3("Date range")), 
                               )
                        ), # End: column
                        column(4,
                               wellPanel(
                                   numericInput("num",
                                                label = h3("Learning hours"),
                                                value = NULL)
                               )
                        ) # End: column
                    ), # End: fluidRow
                    fluidRow(
                        column(4,
                               wellPanel(
                                   textInput("benefit_self",
                                             label = h3("Benefits to self"),
                                             value = "")   
                               )
                        ), # End: column
                        column(4,
                               wellPanel(
                                   textInput("benefit_users",
                                             label = h3("Benefits to users"),
                                             value = "")   
                               )
                        ), # End: column
                        
                        column(4,
                               wellPanel(
                                   actionButton("submit", label = "Submit")
                               )
                        ) # End: column
                    ) # End: fluidRow
           ), # End: tabPanel "Add CPD Activity"
           tabPanel("Review"),
           tabPanel("Generate Report"),
           tags$head(
               bootstrap()
           )
)