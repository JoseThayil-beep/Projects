# R Studio Projects Portfolio

A collection of R-based projects demonstrating various data analysis, visualization, and API integration techniques using R.

## 📋 Projects Overview

### Project 1: Meme Generator with R Graphics
**Objective:** Create custom memes using basic R libraries

**Technologies:**
- R (magick library)
- Image manipulation and graphic creation

**Contents:**
- `.Rproj` - R project file
- `.R` files - R scripts for meme generation
- Output files - Generated memes

**Key Features:**
- Image processing with magick
- Custom graphic overlays
- Batch meme creation capabilities

---

### Project 2: Statistical Investigation - Phone Users on Public Transport
**Objective:** Conduct and document a statistical investigation into phone usage patterns on public transport

**Technologies:**
- R (base statistics packages)
- R Markdown for dynamic reporting
- HTML output for presentation

**Contents:**
- `.Rproj` - R project file
- `.Rmd` files - R Markdown documents with analysis
- `.R` files - Analysis scripts
- `.html` files - Rendered dynamic reports
- Data files - Investigation datasets

**Key Features:**
- Statistical analysis and hypothesis testing
- Data exploration and summary statistics
- Dynamic HTML reports for easy sharing

---

### Project 3: Pexels API Image Meme Creator
**Objective:** Extract images from Pexels API and create visual memes through algorithmic arrangement and processing

**Technologies:**
- R (API integration)
- Pexels API
- Image manipulation (magick)
- Data organization and arrangement algorithms

**Contents:**
- `.Rproj` - R project file
- `.R` files - API integration and image processing scripts
- Output files - Generated visual memes
- Configuration files - API credentials setup

**Key Features:**
- Pexels API integration for image retrieval
- Automated image organization
- Creative visual meme composition
- Batch processing capabilities

---

### Project 4: Advanced Statistical Analysis - Phone Users Investigation (Extended)
**Objective:** Expand on Project 2 with more extensive visualization and deeper investigation into phone usage patterns

**Technologies:**
- R (ggplot2 for advanced visualization)
- Statistical modeling
- Data visualization best practices

**Contents:**
- `.Rproj` - R project file
- `.R` files - Advanced analysis scripts
- `.Rmd` files - Detailed documentation and analysis
- `.html` files - Interactive visualizations and reports
- Data files - Extended datasets

**Key Features:**
- Advanced ggplot2 visualizations
- Multi-faceted data exploration
- Recommendations for investigation improvement
- Publication-ready graphics
- Statistical inference and modeling

---

### Project 5: Beehive API - Ministers Portfolio Analysis
**Objective:** Extract ministerial data from Beehive API and organize ministers according to their portfolios using data wrangling techniques

**Technologies:**
- R (API integration)
- Beehive API
- Data wrangling and manipulation (dplyr, tidyr)
- Data organization and structuring

**Contents:**
- `.Rproj` - R project file
- `.R` files - API integration and data wrangling scripts
- `.Rmd` files - Analysis and documentation
- `.html` files - Formatted output and visualizations
- Processed datasets - Organized minister and portfolio data

**Key Features:**
- Beehive API integration and data extraction
- Complex data wrangling workflows
- Minister portfolio categorization and organization
- Data quality checks and validation
- Exportable structured datasets

---

## 📁 Repository Structure

```
Projects/
├── README.md
├── .gitignore
├── Project1_MemeGenerator/
│   ├── Project1.Rproj
│   ├── scripts/
│   │   └── meme_generation.R
│   └── output/
├── Project2_PhoneUsersAnalysis/
│   ├── Project2.Rproj
│   ├── analysis/
│   │   ├── analysis.R
│   │   └── report.Rmd
│   ├── data/
│   ├── output/
│   │   └── report.html
│   └── README_Project2.md
├── Project3_PexelsImageMeme/
│   ├── Project3.Rproj
│   ├── scripts/
│   │   └── image_processing.R
│   ├── config/
│   ├── output/
│   └── README_Project3.md
├── Project4_AdvancedStatisticalAnalysis/
│   ├── Project4.Rproj
│   ├── analysis/
│   │   ├── advanced_analysis.R
│   │   └── visualization_report.Rmd
│   ├── data/
│   ├── output/
│   │   └── visualizations.html
│   └── README_Project4.md
└── Project5_BeehiveMinistersAnalysis/
    ├── Project5.Rproj
    ├── scripts/
    │   ├── api_integration.R
    │   └── data_wrangling.R
    ├── analysis/
    │   └── ministers_analysis.Rmd
    ├── data/
    ├── output/
    │   └── ministers_portfolio.html
    └── README_Project5.md
```

## 🚀 Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/JoseThayil-beep/Projects.git
   cd Projects
   ```

2. **Navigate to a specific project:**
   ```bash
   cd Project1_MemeGenerator
   ```

3. **Open the R project:**
   - Double-click the `.Rproj` file, or
   - Use `File > Open Project` in RStudio

4. **Install required dependencies:**
   Each project may have specific package requirements. Check the individual project README files.

## 📦 Common R Packages Used

- `magick` - Image manipulation
- `tidyverse` (dplyr, tidyr, ggplot2) - Data wrangling and visualization
- `httr` or `curl` - API integration
- `rmarkdown` - Dynamic reporting
- `ggplot2` - Advanced data visualization

## 📝 Notes

- Each project has its own `.Rproj` file for isolated environment management
- HTML files provide rendered outputs for quick viewing
- All sensitive data (API keys, credentials) should be stored in `.Rprofile` or environment variables
- Refer to individual project README files for specific setup instructions

## 🔧 R Environment

- **R Version:** 4.x+
- **RStudio Version:** Latest recommended

## 📖 How to Use Each Project

### For Viewing Results
- Open `.html` files directly in your web browser for reports and visualizations

### For Running Analysis
- Open the `.Rproj` file in RStudio
- Run individual `.R` scripts or knit `.Rmd` files

### For Modification
- Edit `.R` or `.Rmd` files as needed
- All scripts are commented for clarity

---

**Created:** 2026
**Author:** Jose Thayil
