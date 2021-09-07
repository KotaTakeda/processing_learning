import processing.pdf.PGraphicsPDF; // ver4

// ref : https://processing.org/tutorials/overview
// size(400, 400); // ver1
// size(400, 400, P2D); // ver2: throw warning and not work!
// size(400, 400, P3D); // ver3: throw warning and not work!
size(400, 400, PDF, "output.pdf"); // ver4: success

// The wrong way to specify the middle of the screen
// ellipse(200, 200, 50, 50); ver1

// Always the middle, no matter how the size() line changes
ellipse(width/2, height/2, 50, 50); // ver2