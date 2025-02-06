# Automated Retail Reporting

## Overview
This project provides an **automated monthly reporting system** for a retail client, enabling product managers to analyze key business metrics efficiently. The system is designed to be reusable, allowing the generation of new reports for any given month with minimal manual adjustments.

## Features
- **Dynamic Reporting Template (`.Rmd`)** – Generates insights such as:
  - Top viewed products
  - Revenue distribution
  - Customer spending trends
  - Linear regression analysis on customer behavior
- **Automation Script (`.R`)** – Enables automatic report generation by specifying parameters (e.g., file names for different months).
- **Monthly Reports (`.html`)** – Interactive reports that can be shared with stakeholders.
- **Designed for Non-Technical Users** – Simple modifications in the automation script allow users to generate reports easily.

## Cloning This Repository

Since this repo uses **Git LFS**, ensure you have it installed before cloning:

```bash
git lfs install
git clone https://github.com/MartinNgTP/Automated-Retail-Reporting.git
```

This ensures all large files (such as `.csv` datasets) are correctly downloaded.

## Usage Instructions
### 1. **Prepare Data Files**
Ensure that your data files (e.g., `transactions -- January 2020.csv`, `views -- January 2020.csv`) are placed in the `data/` folder.

### 2. **Run the Automation Script**
Execute the script to generate reports for different months:
```r
source("scripts/automate_reports.R")
```
This will automatically generate `.html` reports inside the `reports/` directory.

### 3. **Modify for Future Months**
To generate reports for a new month, update the automation script to specify the new file names, then rerun the script.

## Dependencies
This project requires the following R packages:
```r
install.packages(c("data.table", "ggplot2", "rmarkdown", "dplyr"))
```

## Contribution
Feel free to submit pull requests or report issues to improve the automation and reporting process.

## License
This project is licensed under the MIT License.

---
This README provides a structured guide for users and contributors, ensuring ease of setup and scalability. 🚀

