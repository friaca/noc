class Walker {
  int x;
  int y;
  
  Walker() {
    x = width / 2;
    y = height / 2;
  }
  
  void display() {
    stroke(0);
    point(x, y);
  }
  
  void randomStep() {
    // int stepX = int(random(3)) - 1;
    // int stepY = int(random(3)) - 1;
    float stepX = random(-1, 1);
    float stepY = random(-1, 1);
    
    x += stepX;
    y += stepY;
  }

  void maybeStepTowardsMouse() {
    float number = random(1);

    if (number > 0.5) {
      stepTowardsMouse();
    } else {
      randomStep();
    }
  }

  void stepTowardsMouse() {
    int stepX = x < mouseX ? 1 : x > mouseX ? -1 : 0;
    int stepY = y < mouseY ? 1 : y > mouseY ? -1 : 0;

    x += stepX;
    y += stepY;
  }
}

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  // w.randomStep();
  // w.stepTowardsMouse();
  w.maybeStepTowardsMouse();
  w.display();
}
