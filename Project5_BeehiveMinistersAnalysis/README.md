# Project 5: Beehive API - Ministers Portfolio Analysis

## 📌 Overview
This project demonstrates advanced API integration and data wrangling by extracting ministerial data from the New Zealand Beehive API. It showcases how to organize complex government data, categorize ministers by their portfolios, and create meaningful visualizations of political structure and responsibilities.

## 🎯 Project Objectives
- Integrate with the Beehive API for real-time government data
- Perform comprehensive data wrangling and cleaning
- Organize ministers by their portfolios and responsibilities
- Create structured datasets for analysis
- Visualize ministerial organization and relationships
- Demonstrate advanced web scraping and data extraction techniques

## 📁 Files in This Project

### Core Scripts
- **`data_sources.R`** - API endpoints and data source configuration
  - Beehive API setup
  - Authentication and credentials
  - Query parameters
  
- **`scrape_html.R`** - HTML scraping utilities
  - Web page parsing
  - Data extraction from HTML
  - HTML table processing

- **`get_wikipedia_infobox.R`** - Wikipedia integration
  - Biographical data extraction
  - Minister information enrichment
  - Additional context gathering

- **`visualisation.R`** - Data visualization
  - Portfolio organization charts
  - Minister distribution plots
  - Relationship visualizations

### Documentation
- **`project5_report.Rmd`** - Complete analysis and methodology
- **`project5_report.html`** - Rendered report (open in browser)

### Data Files
- **`beehive.rds`** - Cached Beehive API data (R serialized format)
- **`minister.rds`** - Processed minister data with portfolios

### Outputs
- **`final_graph.png`** - Final visualization of minister portfolios
- **`my_viz.png`** - Alternative visualization
- **`cat.jpg`** - Reference/bonus image

### Project Setup
- **`Project5.Rproj`** - R project file for isolated environment

## 🛠️ Setup & Requirements

### R Packages Required
```R
install.packages("httr")         # HTTP requests for API
install.packages("jsonlite")     # JSON parsing
install.packages("rvest")        # Web scraping
install.packages("xml2")         # XML/HTML parsing
install.packages("tidyverse")    # dplyr, tidyr, ggplot2
install.packages("rmarkdown")    # Dynamic reporting
install.packages("igraph")       # Network analysis (optional)
```

### System Requirements
- R 4.0+
- Internet connection (for API access)
- RStudio (recommended)

## 🚀 How to Run

### Option 1: View Results Only
1. Open `project5_report.html` in your web browser
2. View visualizations: `final_graph.png`, `my_viz.png`

### Option 2: Run Fresh Analysis
1. Double-click `Project5.Rproj` to open in RStudio
2. Run individual scripts in order:
   ```R
   source("data_sources.R")              # Load API data
   source("scrape_html.R")               # Scrape additional data
   source("get_wikipedia_infobox.R")     # Enrich with Wikipedia
   source("visualisation.R")             # Create visualizations
   ```
3. Knit the report:
   ```R
   rmarkdown::render("project5_report.Rmd")
   ```

## 📊 Data Structure

### Ministers Dataset
The analysis organizes ministers with:
- **Name** - Full minister name
- **Portfolio** - Primary responsibility area
- **Secondary Portfolios** - Additional responsibilities
- **Party** - Political party affiliation
- **Tenure** - Start/end dates
- **Contact Info** - Official contact details
- **Biography** - Background information (from Wikipedia)

### Portfolio Categories
Ministers are organized by major portfolio areas:
- Finance
- Health
- Education
- Transport
- Environment
- Justice
- Foreign Affairs
- And others...

## 💡 Project Highlights

✅ **API Integration**
- Clean, reusable API client code
- Error handling and rate limiting awareness
- Data caching for efficiency

✅ **Data Wrangling**
- Complex data cleaning workflows
- Handling missing and inconsistent data
- Data validation and quality checks
- Multiple data source integration

✅ **Web Scraping**
- HTML parsing and extraction
- Table processing
- Data standardization

✅ **Visualization**
- Portfolio organization charts
- Minister distribution by portfolio
- Professional-quality graphics

## 🔧 Customization

### Update Minister Data
```R
# Modify data_sources.R to:
# 1. Change API endpoints
# 2. Adjust filtering parameters
# 3. Update caching strategy
```

### Change Visualization
```R
# Edit visualisation.R to:
# - Different plot types (sunburst, treemap, network)
# - Adjust color schemes
# - Filter by specific criteria
```

### Add Additional Data
```R
# Extend get_wikipedia_infobox.R to:
# - Pull additional biographical information
# - Add voting records or policy positions
# - Include historical minister data
```

## 📝 API Information

### Beehive API
- **Source:** New Zealand Government - The Beehive
- **Type:** REST API with JSON responses
- **Authentication:** May require API key
- **Rate Limits:** Check official documentation
- **Documentation:** [Beehive API Docs](https://www.beehive.govt.nz/)

### Data Freshness
- Minister data is cached in `.rds` files
- Update caches by re-running `data_sources.R`
- Consider scheduling updates if deployed

## 🔗 Useful Resources

- [Beehive API Documentation](https://www.beehive.govt.nz/)
- [httr Package Guide](https://httr.r-lib.org/)
- [rvest Web Scraping](https://rvest.tidyverse.org/)
- [jsonlite JSON Processing](https://jeroen.r-universe.dev/jsonlite)

## ⚠️ Troubleshooting

| Issue | Solution |
|-------|----------|
| API connection fails | Check internet connection and API endpoints |
| JSON parsing error | Verify API response structure hasn't changed |
| Scraping returns empty | Check HTML structure hasn't been updated |
| Missing minister data | Verify API credentials and permissions |
| Visualization too cluttered | Filter to subset of data or change plot type |

## 📋 Notes

- **Data Sensitivity:** Uses public government data
- **Update Frequency:** Run periodically to capture government changes
- **Performance:** Large datasets may require filtering
- **Reproducibility:** All analyses are reproducible and version-controlled
- **Network Analysis:** Can be extended with relationship/dependency mapping

---

**Status:** ✅ Complete  
**Data Source:** Beehive API + Wikipedia + Web Scraping  
**API Type:** REST/JSON  
**Output Format:** HTML + PNG Visualizations  
**Last Updated:** 2026-07-17
