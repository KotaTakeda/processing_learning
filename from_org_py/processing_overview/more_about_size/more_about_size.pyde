# ref: https://processing.org/tutorials/overview
add_library("pdf")

# size(400, 400) ver1

# options for size()
# size(400, 400, "P2D") # WARNING: not work on Python. The P2D renderer uses OpenGL for faster rendering of two-dimensional graphics.
# size(400, 400, "P3D") 
size(400, 400, PDF, "output.pdf")

# The wrong way to specify the middle of the screen
# ellipse(200, 200, 50, 50)

# Always the middle, no matter how the size() line changes
# ellipse(width/2, height/2, 50, 50)
