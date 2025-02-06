### Section 1: edit allowed

## 3 Steps below to make sure the automated report works
# Step 1: Make sure all files are in the same working directory, then set this R script to the same directory:
# Session --> Set Working Directory --> To Source File Location

# Step 2: Define parameters for the report
# Update these file names and parameters for each month (and year)
params_list <- list(
  views_file = "views-January2020.csv",  # Views file
  transactions_file = "transactions-January2020.csv", # Transactions file
  products_file = "products.csv", # Products file
  customers_file = "customers.csv", # Customers file
  month = 1, # Report month in numeric
  year = 2020 # Report year 
)

# Step 3: Highlight everything (including code below) on this script and press Run. Give it a minute.
# The report "Report_<year>_<month>.html" will be stored in a new folder within the same working directory.


### Section 2: DO NOT EDIT CODE BELOW

# Load necessary libraries
library(rmarkdown)

# Create output directory if not exists
output_dir <- paste0("Monthly_Reports/", params_list$year, "_", sprintf("%02d", params_list$month))
if (!dir.exists(output_dir)) {
  dir.create(output_dir, recursive = TRUE)
}
output_file <- paste0(output_dir, "/Report_", params_list$year, "_", sprintf("%02d", params_list$month),".html")

# Specify the template path
rmarkdown_template <- "MonthlyReport.Rmd"  

# Render the report, passing the params list to the Rmd file
render(
  input = rmarkdown_template,                     # RMarkdown template
  output_file = output_file,                      # Output HTML file
  params = params_list,                           # Pass params
  envir = new.env(parent = globalenv())           # Use new environment for params
)

# Notify user of report generation
cat("Report for", params_list$report_date, "has been generated at:", output_file, "\n")