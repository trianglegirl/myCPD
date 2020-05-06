bs_theme_set(theme = "cosmo")

navbarPage("Rhian's CPD",
           tabPanel("Edit",
                    fluidRow(
                      actionButton("add_cpd", "Add activity", icon = icon("plus")),
                      actionButton("edit_cpd", "Edit activity", icon = icon("pencil")),
                      actionButton("delete_cpd", "Delete activity", icon = icon("times")),
                      downloadButton("download_cpd", "Download"),
                      bsModal("add_cpd_modal",
                              title = "Add CPD",
                              trigger = "add_cpd",
                              size = "large",
                              fluidRow(
                                column(4,
                                       textInput("activity_name",
                                                 label = h3("Activity"),
                                                 value = "")
                                ),# End: column
                                
                                column(4,
                                       numericInput("num",
                                                    label = h3("Learning hours"),
                                                    value = NULL)
                                ), # End: column
                                
                                column(4,
                                       dateRangeInput("dates",
                                                      label = h3("Date range"))
                                ) # End: column,
                                
                              ), # End: fluidRow
                              fluidRow(
                                column(8,
                                       textAreaInput("activity_description",
                                                     label = h3("Activity Description"),
                                                     value = "",
                                                     width = "350px",
                                                     height = "100px") 
                                ), # End: column
                                column(4,
                                       radioButtons("activity_type",
                                                    label = h3("Activity type"),
                                                    choices = list("Work based learning" = 1,
                                                                   "Professional activity" = 2,
                                                                   "Formal/educational" = 3, 
                                                                   "Self-directed learning" = 4, 
                                                                   "Other" = 5), 
                                                    selected = NULL)
                                ) # End: column
                              ), # End: fluidRow
                              fluidRow(
                                column(12,
                                       textAreaInput("activity_benefit_self",
                                                     label = h3("Benefits to Self"),
                                                     value = "",
                                                     width = "350px",
                                                     height = "100px") 
                                ) # End: column
                              ), # End: fluidRow
                              
                              fluidRow(
                                column(10,
                                       textAreaInput("activity_benefit_users",
                                                     label = h3("Benefits to Users"),
                                                     value = "",
                                                     width = "350px",
                                                     height = "100px") 
                                ), # End: column
                                column(2,
                                       actionButton("submit", label = "Submit")
                                ) # End: column
                              ) # End: fluidRow
                              
                              
                      ),
                      bsModal("edit_cpd_modal",
                              title = "Edit CPD",
                              trigger = "edit_cpd",
                              size = "large"
                      ),
                      bsModal("delete_cpd_modal",
                              title = "Delete CPD",
                              trigger = "delete_cpd",
                              size = "large"
                      )
                    ), # End: fluidRow
                    
                    hr(),
                    fluidRow(
                      dataTableOutput("cpd_table")
                    ) # End: fluidRow
                    
           ), # End: tabPanel "Add CPD Activity"
           tabPanel("Review"),
           tabPanel("Generate Report"),
           tags$head(
             bootstrap()
           )
)