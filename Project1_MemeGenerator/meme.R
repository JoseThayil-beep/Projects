#Importing library
library(magick)

#Creating Frames
Frame1 <- image_blank(color = "#000000", height = 600, width = 450) %>% image_annotate(text="Meme Reward in 3", color = "#FFFFFF", gravity = "center", size = 35, weight = 700)
Frame2 <- image_blank(color = "#000000", height = 600, width = 450) %>% image_annotate(text="Meme Reward in 2", color = "#FFFFFF", gravity = "center", size = 35, weight = 700)
Frame3 <- image_blank(color = "#000000", height = 600, width = 450) %>% image_annotate(text="Meme Reward in 1", color = "#FFFFFF", gravity = "center", size = 35, weight = 700)

#Finding and naming meme image
Meme_Image <- image_read(path="https://static01.nyt.com/images/2020/01/28/multimedia/28xp-memekid3/28cp-memekid3-articleLarge.jpg?quality=75&auto=webp&disable=upscale")
#Scaling meme image to appropriate size and naming variable
Sized_meme_image <- image_scale(Meme_Image, "450")
#Text on top image
Top_image <- image_blank(color = "#000000", height = 80, width = 450) %>% image_annotate(text="My plans for stats220", color = "#FFFFFF", gravity = "center", size = 35, weight = 700)
#Text on bottom image
Bottom_image <- image_blank(color="#000000", height = 220, width = 450) %>% image_annotate(text="is to understand R-Studio,\n which I studied in stats201, \nand was required to learn \n back in highschool DTP", color = "#FFFFFF", gravity = "center", size = 35, weight = 700)
#Combining all images together
Full_Image <- c(Top_image, Sized_meme_image, Bottom_image)
My_meme <- image_append(Full_Image, stack=T)
image_write(My_meme, "my_meme.png")
#Pasting image in viewer
animation <- image_animate(c(Frame1,Frame2,Frame3,rep(My_meme, 4)), fps = 1)
animation
#Saving image as png file
image_write(animation, "my_animated_meme.gif")

