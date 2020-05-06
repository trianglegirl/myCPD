shinyServer(function(input, output) {

output$cpd_table = renderDataTable({
  df_cpd %>%
    select("Activity Type", "Title", "Start Date",
           "End Date", "Learning Hours") %>%
    datatable(rownames = FALSE)
})
  
})
