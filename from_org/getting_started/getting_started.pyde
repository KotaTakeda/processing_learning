# ref: https://processing.org/tutorials/gettingstarted

def setup(): 
    size(480, 120)  # create display 480 * 120

def draw():
    if mousePressed:
        fill(0) # fill with black
    else:
        ellipse(mouseX, mouseY, 80, 80) # draw circle: center =(mouseX, mouseY), radius=80
