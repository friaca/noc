import java.util.Random;

Random generator;

void setup() {
  size(640, 640);
  generator = new Random();
  background(255);
}

void draw() {
  
}

// void draw() {
//   float number = (float) generator.nextGaussian();
//   float standardDeviation = 60;
//   float mean = 320;

//   float x = standardDeviation * number + mean;

//   noStroke();
//   fill(204, 102, 0, 10);
//   ellipse(x, 180, 16, 16);
// }


