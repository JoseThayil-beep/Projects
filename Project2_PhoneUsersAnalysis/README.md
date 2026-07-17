# Project 2: Statistical Investigation - Phone Users on Public Transport

## 📌 Overview
This project conducts a comprehensive statistical investigation into phone usage patterns among passengers on public transport. The analysis explores usage frequency, demographics, and behavioral patterns through exploratory data analysis and hypothesis testing.

## 🎯 Project Objectives
- Investigate phone usage behavior on public transport
- Apply statistical methods for data exploration
- Create dynamic HTML reports for easy sharing
- Understand user demographics and patterns
- Support evidence-based conclusions with statistical rigor

## 📁 Files in This Project

### Analysis Scripts
- **`exploration.R`** - Data exploration and initial analysis
  - Summary statistics
  - Data cleaning
  - Exploratory data analysis (EDA)
  - Basic visualizations

### Documentation
- **`project2_report.Rmd`** - R Markdown with full statistical analysis
- **`dynamic_report.Rmd`** - Alternative detailed report format
- **`project2_report.html`** - Rendered report (open in browser)
- **`dynamic_report.html`** - Alternative HTML output

### Project Setup
- **`Project2.Rproj`** - R project file for isolated environment

## 🛠️ Setup & Requirements

### R Packages Required
```R
install.packages("tidyverse")    # dplyr, ggplot2, tidyr
install.packages("rmarkdown")    # Dynamic reporting
install.packages("knitr")        # Report generation
install.packages("stats")        # Statistical tests
install.packages("descr")        # Descriptive statistics
```

### System Requirements
- R 4.0+
- RStudio (recommended for .Rmd knitting)

## 🚀 How to Run

### Option 1: View Reports Only
1. Open `project2_report.html` in your web browser
2. View `dynamic_report.html` for alternative perspective

### Option 2: Run Analysis Fresh
1. Double-click `Project2.Rproj` to open in RStudio
2. Run the exploration script:
   ```R
   source("exploration.R")
   ```
3. Knit the R Markdown reports:
   ```R
   rmarkdown::render("project2_report.Rmd")
   rmarkdown::render("dynamic_report.Rmd")
   ```

## 📊 Analysis Contents

### Exploratory Data Analysis (EDA)
- ✅ Data summary and structure
- ✅ Missing data assessment
- ✅ Descriptive statistics by phone user status
- ✅ Frequency distributions

### Statistical Tests
- ✅ Hypothesis testing for phone usage differences
- ✅ Demographic analysis
- ✅ Behavioral pattern identification
- ✅ Comparative statistics

### Visualizations
- ✅ Distribution plots
- ✅ Comparative bar charts
- ✅ Demographic breakdowns
- ✅ Trend analysis

## 📈 Key Findings

- **Usage Patterns:** Statistical summary of phone usage on public transport
- **Demographics:** Age, gender, and other demographic breakdowns
- **Behavioral Insights:** Common usage scenarios and frequency patterns
- **Statistical Significance:** Rigorous testing of observed differences

## 💡 Methodology

- **Data Collection:** Survey-based investigation
- **Analysis Approach:** Descriptive statistics and hypothesis testing
- **Reporting:** Dynamic R Markdown for reproducible analysis
- **Visualization:** Clear, publication-ready graphics

## 🔧 Customization

To reproduce with your own data:
1. Replace the data source in `exploration.R`
2. Adjust variable names in the analysis scripts
3. Update the `.Rmd` files with new findings
4. Knit to regenerate HTML reports

## 📝 Notes

- All analysis is reproducible and version-controlled
- HTML reports can be shared with stakeholders easily
- R Markdown allows for dynamic updates as new data arrives
- Statistical conclusions are clearly documented

## 🔗 Useful Resources

- [R for Data Science](https://r4ds.had.co.nz/)
- [Statistical Testing in R](https://www.statmethods.net/)
- [R Markdown Definitive Guide](https://bookdown.org/yihui/rmarkdown/)
- [ggplot2 Documentation](https://ggplot2.tidyverse.org/)

---

**Status:** ✅ Complete  
**Investigation Type:** Descriptive & Inferential Statistics  
**Report Format:** HTML (Dynamic & Interactive)  
**Last Updated:** 2026-07-17
