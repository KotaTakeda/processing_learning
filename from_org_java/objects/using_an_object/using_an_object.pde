// ref: https://processing.org/tutorials/objects

// Step 1. Declare an object.
Car myCar; // type name

void setup()  {
  // Step 2. Initialize object.
  size(400, 400);
  myCar = new Car(color(255,0,255),0,100,2); // The new operator is used to make a new object.
}

void draw()  {
  background(255);
  // Step 3. Call methods on the object.
  myCar.drive();
  myCar.display();
}

// Even though there are multiple objects, we still only need one class.
// No matter how many cookies we make, only one cookie cutter is needed.
class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // The Constructor is defined with arguments.
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
    rect(xpos,ypos,20,10);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}