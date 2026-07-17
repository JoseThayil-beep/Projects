# Project 1: Meme Generator with R Graphics

## 📌 Overview
This project demonstrates how to create custom memes using R's powerful image manipulation capabilities. Using the `magick` library, this project transforms basic images into engaging memes with text overlays and creative effects.

## 🎯 Project Objectives
- Learn image manipulation in R using the magick library
- Create static and animated memes programmatically
- Explore graphic design principles through code
- Generate batch memes efficiently

## 📁 Files in This Project

### Scripts
- **`meme.R`** - Main script for creating memes
  - Image loading and processing
  - Text overlay creation
  - Meme generation logic
  - Animation capabilities

### Documentation
- **`project1_report.Rmd`** - R Markdown document with analysis and examples
- **`project1_report.html`** - Rendered HTML report (open in browser to view)

### Reference Materials
- **`inspo_meme.png`** - Inspiration/reference meme

### Outputs
- **`my_meme.png`** - Generated static meme
- **`my.meme.png`** - Additional meme variation
- **`my_animated_meme.gif`** - Animated meme creation
- **`my.animated.meme.gif`** - Animated meme variation

## 🛠️ Setup & Requirements

### R Packages Required
```R
install.packages("magick")
install.packages("png")
install.packages("jpeg")
```

### System Requirements
- R 4.0+
- ImageMagick (system library - usually comes with magick package)

## 🚀 How to Run

1. **Open the Project:**
   - Double-click `Project1.Rproj` in RStudio
   
2. **Run the Main Script:**
   ```R
   source("meme.R")
   ```

3. **Generate a Meme:**
   - The script will create and save meme files to the project directory
   - Check the output for `my_meme.png` and `my_animated_meme.gif`

4. **View the Report:**
   - Open `project1_report.html` in your web browser to see the complete analysis

## 📊 Key Features

✅ **Image Processing**
- Load and manipulate images (PNG, JPG, GIF)
- Apply text overlays with custom fonts
- Composite multiple images

✅ **Animation**
- Create animated GIFs
- Frame-by-frame manipulation
- Time-controlled transitions

✅ **Batch Processing**
- Create multiple memes in one run
- Automated file naming
- Organized output structure

## 💡 Project Highlights

- Uses the `magick` library for all image operations
- Demonstrates R's versatility beyond data analysis
- Combines creativity with programming
- Generates production-ready meme files

## 📝 Notes

- All meme outputs are saved to the project directory
- Ensure you have sufficient disk space for GIF files
- Animated GIFs can be large; adjust quality settings as needed
- Experiment with different fonts and colors for custom designs

## 🔗 Useful Resources

- [Magick R Package Documentation](https://docs.ropensci.org/magick/)
- [ImageMagick Official Site](https://imagemagick.org/)
- [R Graphics Cookbook](https://r-graphics.org/)

---

**Status:** ✅ Complete  
**Last Updated:** 2026-07-17
