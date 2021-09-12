// ref: https://processing.org/tutorials/objects

// to save gif
import gifAnimation.*;
GifMaker gifExport;
// animation setting
int frames = 50; // fps
int delay = 1000/frames;
int totalTime = 3; // s
// ------------------

color c = color(0);
float x = 0;
float y = 100;
float speed = 1;

void setup() {
  size(200,200);

  // to save gif
  frameRate(frames);
  gifExport = new GifMaker(this, "output.gif");
  gifExport.setRepeat(0); // 0: endless
  gifExport.setQuality(10); // default 10
  gifExport.setDelay(delay);
  // ---------------------
}

void draw() {
  background(255);
  move();
  display();

  // to save gif
  if(frameCount <= frames * totalTime){
    gifExport.addFrame();
  } else {
    gifExport.finish();
  }
  // --------------------
}

void move() {
  x = x + speed;
  if (x > width) {
    x = 0;
  }
}

void display() {
  fill(c);
  rect(x,y,30,10);
}