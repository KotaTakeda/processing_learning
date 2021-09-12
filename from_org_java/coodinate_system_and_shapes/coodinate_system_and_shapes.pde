// ref: https://processing.org/tutorials/coordinatesystemandshapes
// -------------------------------------------------------------------
// in display window, positive direction of x is right, of y is down!
// -------------------------------------------------------------------
// coordinate system
// line(1,0,4,5); // line(x1, y1, x2, y2); line(draw a line from (1, 0) to (4, 5)

// shapes
// point(1, 2); // point(x, y); 
// point(5, 2);
// line(1, 2, 5, 2);

// rect
// rect(1, 2, 4, 3); // rect(x, y, width, height);
// rectMode(CENTER);
// rect(1, 2, 4, 3); // rect(center_x, center_y, width, height)
// rectMode(CORNERS);
// rect(1, 1, 5, 3); // rect(x1, y1, x2, y2);

//  similaly in ellipse
// ellipseMode(CENTER);
// ellipseMode(CORNER);
// ellipseMode(CORNERS);

// ------------------------------------
// example
size(200,200);

// body
rectMode(CENTER);
rect(100,100,20,100);

//  face
ellipse(100,70,60,60);
ellipse(81,70,16,32);
ellipse(119,70,16,32);

// feet
line(90,150,80,160);
line(110,150,120,160);

saveFrame("output.png");