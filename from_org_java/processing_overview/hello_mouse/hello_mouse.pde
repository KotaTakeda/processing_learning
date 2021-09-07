void setup() {
  size(400, 400);
  stroke(255);
  // background(192, 64, 0); // ver1: multi lines area drawn. ver3
}

void draw() {
  // background(192, 64, 0); // ver2: clear display for each draw => single line is drawn
  line(150, 25, mouseX, mouseY);
  saveFrame("output.png"); // ver1 save only last draw as png
  // saveFrame("output-####.png") // ver2 save with number. WARNING: too many pictures are generated.
}

// ver3: claer display when mouse is pressed
void mousePressed() {
  background(192, 64, 0);
}