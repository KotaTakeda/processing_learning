// ref: https://processing.org/tutorials/gettingstarted
// To run with the following command
// $ processing-java --sketch=$(pwd)/getting_started --run

// draw single circle
// size(400, 400);
// ellipse(200, 200, 300, 300);

// little more exciting exmaple
void setup() {
  size(480, 120);
}

void draw() {
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}