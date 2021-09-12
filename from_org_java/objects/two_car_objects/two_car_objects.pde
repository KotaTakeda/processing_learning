// ref: https://processing.org/tutorials/objects

Car mycar1;
Car mycar2;

void setup() {
  size(200, 200);
  mycar1 = new Car(color(255, 0, 0), 0, 100, 2);
  mycar2 = new Car(color(0, 0, 255), 0, 10, 1);
}

void draw() {
  background(255);
  mycar1.drive();
  mycar1.display();
  mycar2.drive();
  mycar2.display();
}

class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }

  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 20, 10);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0; // should be xpos - width ?
    }
  }
}