# Project 3: Pexels API Image Meme Creator

## 📌 Overview
This project showcases the integration of the Pexels API to retrieve high-quality images, followed by sophisticated algorithmic arrangement and processing to create visually engaging memes. It demonstrates advanced API integration, image data management, and creative visual composition using R.

## 🎯 Project Objectives
- Integrate and authenticate with the Pexels API
- Retrieve and organize image metadata programmatically
- Implement intelligent image arrangement algorithms
- Create composite visual memes from API-sourced images
- Manage and analyze image collections
- Generate publication-ready visualizations

## 📁 Files in This Project

### Core Scripts
- **`exploration.R`** - API integration and image retrieval
  - Pexels API authentication
  - Image search and download
  - Metadata extraction
  - Collection management

### Documentation
- **`project3_report.Rmd`** - Comprehensive analysis and methodology
- **`project3_report.html`** - Rendered HTML report (open in browser)

### Data Files
- **`selected_photos.csv`** - Curated collection of image metadata
  - Image URLs and IDs
  - Photographer information
  - Image dimensions and tags
  - Selection criteria

### Outputs
- **`bg_meme.png`** - Background template for meme creation
- **`creativity.gif`** - Animated meme showcase
- **`top_photos.png`** - Composite visualization of top images

## 🛠️ Setup & Requirements

### R Packages Required
```R
install.packages("httr")         # HTTP requests for API
install.packages("jsonlite")     # JSON parsing
install.packages("magick")       # Image manipulation
install.packages("tidyverse")    # Data wrangling (dplyr, tidyr, ggplot2)
install.packages("rmarkdown")    # Dynamic reporting
install.packages("readr")        # CSV reading
```

### API Setup
1. **Get a Pexels API Key:**
   - Visit [Pexels API](https://www.pexels.com/api/)
   - Sign up and generate your API key
   - Keep your key secure (never commit to Git)

2. **Store API Credentials:**
   ```R
   # Create a file called .Rprofile in your home directory
   PEXELS_API_KEY <- "your_api_key_here"
   ```

### System Requirements
- R 4.0+
- Internet connection for API access
- ImageMagick (for advanced image operations)

## 🚀 How to Run

### Option 1: View Results
1. Open `project3_report.html` in your web browser
2. View output memes: `bg_meme.png`, `creativity.gif`, `top_photos.png`

### Option 2: Run Fresh Analysis
1. Double-click `Project3.Rproj` in RStudio
2. Set up your Pexels API key (see Setup section)
3. Run the exploration script:
   ```R
   source("exploration.R")
   ```
4. Knit the report:
   ```R
   rmarkdown::render("project3_report.Rmd")
   ```

### Option 3: Custom Image Search
Modify the search parameters in `exploration.R`:
```R
search_query <- "nature"  # Change search term
per_page <- 50             # Change number of images
```

## 📊 API Integration Details

### Pexels API Workflow
1. **Authentication:** Send API key with requests
2. **Search:** Query images by keyword
3. **Retrieve:** Download metadata and URLs
4. **Store:** Save photo information to CSV
5. **Process:** Arrange and composite images

### Data Structure
The `selected_photos.csv` contains:
- `photo_id` - Unique image identifier
- `url` - Direct image URL
- `photographer` - Creator information
- `width` / `height` - Image dimensions
- `tags` - Categorization metadata

## 🎨 Image Arrangement Algorithm

### Key Features
✅ **Intelligent Arrangement**
- Organize images by visual properties (color, size, etc.)
- Create balanced compositions
- Generate aesthetically pleasing layouts

✅ **Meme Composition**
- Combine multiple images algorithmically
- Add creative overlays
- Generate animated sequences (GIFs)

✅ **Quality Assurance**
- Filter by image resolution
- Select diverse content
- Maintain professional standards

## 💡 Project Highlights

- **API Integration:** Clean, reusable code for Pexels authentication
- **Data Management:** Efficient CSV storage of image metadata
- **Creative Processing:** Algorithmic image arrangement
- **Animation:** Generate engaging animated GIFs
- **Reproducibility:** Complete workflow documented in R Markdown

## 📝 Notes

- **Rate Limiting:** Pexels API has rate limits; check documentation
- **Storage:** Downloaded images consume disk space; manage accordingly
- **Performance:** Large image batches may take time to process
- **Licenses:** All Pexels images are free; ensure appropriate attribution
- **API Key Security:** Never commit API keys to Git; use environment variables

## 🔧 Customization

### Modify Search Parameters
```R
query <- "cats"  # Search for cat images
per_page <- 100  # Get 100 results
```

### Change Arrangement Style
```R
# Edit the meme creation function to customize layout
# Options: grid, cascade, radial, etc.
```

### Adjust Output Format
```R
# Change output dimensions, quality, or format (PNG/GIF)
```

## 🔗 Useful Resources

- [Pexels API Documentation](https://www.pexels.com/api/documentation/)
- [httr Package Guide](https://httr.r-lib.org/)
- [Magick R Package](https://docs.ropensci.org/magick/)
- [API Best Practices](https://www.postman.com/api-platform/api-design/)

## ⚠️ Troubleshooting

| Issue | Solution |
|-------|----------|
| API key not found | Add to `.Rprofile` with `PEXELS_API_KEY <- "key"` |
| Image download fails | Check internet connection and API rate limits |
| Meme generation slow | Reduce number of images or resize them first |
| GIF creation error | Ensure ImageMagick is properly installed |

---

**Status:** ✅ Complete  
**API:** Pexels (Free)  
**Data Source:** Real-time API calls  
**Output Format:** PNG, GIF, HTML  
**Last Updated:** 2026-07-17
