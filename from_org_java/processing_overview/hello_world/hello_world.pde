// ref: https://processing.org/tutorials/overview

size(400, 400);
background(192, 64, 0);
stroke(255);
line(150, 25, 270, 350);

// other way to specify color of stroke
// stroke(255);                // sets the stroke color to white
// stroke(255, 255, 255);      // identical to the line above
// stroke(255, 128, 0);        // bright orange (red 255,green 128, blue 0)
// stroke(#FF8000);            // bright orange as a web color
// stroke(255, 128, 0, 128);   // bright orange with 50% transparency

// save as png
saveFrame("output.png");