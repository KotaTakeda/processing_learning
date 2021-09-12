// ref: 
// - https://processing.org/tutorials/color
// - https://processing.org/reference/colorMode_.html
size(200, 200);
background(255);    // Setting the background to white
stroke(0);          // Setting the outline (stroke) to black
fill(150);          // Setting the interior of a shape (fill) to grey
rect(50,50,75,100); // Drawing the rectangle


// no...
// noStroke(); // no outline
// noFill(); // no fill in shape

// Custom Color Ranges
// colorMode(RGB,100); // The range of RGB values will be from 0 to 100.
// colorMode(RGB,100,500,10,255); // Red values go from 0 to 100, green from 0 to 500, blue from 0 to 10, and alpha from 0 to 255.

saveFrame("output.png");