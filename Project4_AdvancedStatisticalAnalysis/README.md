# Project 4: Advanced Statistical Analysis - Phone Users Investigation (Extended)

## 📌 Overview
This project expands significantly on the initial phone users investigation (Project 2) by diving deeper into the data with advanced visualization techniques and sophisticated statistical methods. Using ggplot2 and other advanced tools, this project creates publication-ready visualizations and explores opportunities for improving the original investigation.

## 🎯 Project Objectives
- Build on foundational statistical analysis from Project 2
- Create advanced, multi-faceted visualizations using ggplot2
- Perform deeper statistical modeling and inference
- Identify patterns and opportunities for investigation improvement
- Generate presentation-ready graphics and reports
- Provide actionable recommendations for future research

## 📁 Files in This Project

### Analysis Scripts
- **`data_visualisation.R`** - Advanced ggplot2 visualizations
  - Multi-layered plots
  - Faceted visualizations
  - Statistical overlays
  - Theme customization

### Documentation
- **`project4_report.Rmd`** - Primary analysis report with findings
- **`visual_data_story.Rmd`** - Narrative-driven visualization document
- **`project4_report.html`** - Rendered report (open in browser)
- **`visual_data_story.html`** - Visual story HTML output

### Visualizations
- **`plot1.png`** - Distribution analysis visualization
- **`plot2.png`** - Comparative analysis with multiple variables
- **`plot3.png`** - Advanced statistical visualization

### Project Setup
- **`Project4.Rproj`** - R project file for isolated environment

## 🛠️ Setup & Requirements

### R Packages Required
```R
install.packages("tidyverse")    # dplyr, ggplot2, tidyr, readr
install.packages("ggplot2")      # Advanced graphics
install.packages("rmarkdown")    # Dynamic reporting
install.packages("gridExtra")    # Multi-plot arrangements
install.packages("scales")       # Formatting scales
install.packages("viridis")      # Color palettes
```

### System Requirements
- R 4.0+
- RStudio (recommended for .Rmd knitting)
- Data from Project 2 (or compatible dataset)

## 🚀 How to Run

### Option 1: View Results
1. Open `project4_report.html` in your web browser
2. Open `visual_data_story.html` for narrative visualization
3. View PNG files for individual plots

### Option 2: Run Analysis Fresh
1. Double-click `Project4.Rproj` to open in RStudio
2. Ensure you have the data from Project 2 available
3. Run the visualization script:
   ```R
   source("data_visualisation.R")
   ```
4. Knit the R Markdown reports:
   ```R
   rmarkdown::render("project4_report.Rmd")
   rmarkdown::render("visual_data_story.Rmd")
   ```

## 📊 Analysis Contents

### Advanced Visualizations
- ✅ Multi-faceted comparisons
- ✅ Interactive statistical plots
- ✅ Distribution analysis with overlays
- ✅ Correlation and relationship visualizations
- ✅ Time series or trend analysis (if applicable)

### Statistical Methods
- ✅ Advanced hypothesis testing
- ✅ Regression analysis
- ✅ Multivariate analysis
- ✅ Effect size calculations
- ✅ Confidence interval estimation

### Data Exploration
- ✅ Deeper demographic breakdowns
- ✅ Subgroup analysis
- ✅ Outlier detection and investigation
- ✅ Data quality assessment
- ✅ Missing data patterns

## 💡 Key Features of This Project

✅ **Publication-Ready Graphics**
- Professional color schemes
- Clear legends and labels
- Appropriate axis scales
- High-resolution output (PNG files included)

✅ **Narrative Visualization**
- Story-driven data presentation
- Contextual explanations
- Flow between visualizations
- Actionable insights

✅ **Reproducibility**
- Well-documented analysis scripts
- Dynamic R Markdown reports
- Version-controlled workflow
- Clear methodology documentation

✅ **Recommendations**
- Identified improvements to original investigation
- Suggested follow-up analyses
- Proposed data collection enhancements
- Future research directions

## 📈 Visualization Highlights

- **Plot 1:** Initial distribution and characteristics
- **Plot 2:** Complex multivariate relationships showing patterns
- **Plot 3:** Advanced statistical insights and conclusions

## 🔧 Customization

To adapt this analysis:
1. Load your own data in `data_visualisation.R`
2. Modify ggplot aesthetics and themes
3. Adjust statistical methods as needed
4. Update report titles and interpretations
5. Regenerate all outputs

## 📝 Key Improvements Over Project 2

- ✅ Advanced ggplot2 syntax for sophisticated plots
- ✅ Multi-faceted analysis approaches
- ✅ Deeper statistical modeling
- ✅ More comprehensive reporting
- ✅ Actionable recommendations for future work
- ✅ Professional-grade visualizations

## 🔗 Useful Resources

- [ggplot2: Elegant Graphics for Data Analysis](https://ggplot2-book.org/)
- [Data Visualization Best Practices](https://www.interaction-design.org/literature/articles/information-design)
- [Statistical Modeling in R](https://www.statmethods.net/)
- [R Graphics Cookbook](https://r-graphics.org/)

## ⚠️ Troubleshooting

| Issue | Solution |
|-------|----------|
| Plot rendering slow | Check data size; consider downsampling for exploration |
| Colors not displaying | Ensure viridis package is installed |
| Missing data values | Filter with `!is.na()` before plotting |
| File size too large | Adjust PNG resolution or compression settings |

---

**Status:** ✅ Complete  
**Analysis Type:** Advanced Exploratory & Confirmatory  
**Builds On:** Project 2 - Phone Users Analysis  
**Report Format:** HTML (Dynamic & Static Images)  
**Last Updated:** 2026-07-17
