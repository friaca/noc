int[] randomNumbersCount;

void setup() {
  size(640, 240);
  randomNumbersCount = new int[20];
}

void draw() {
  background(255);

  int index = int(random(randomNumbersCount.length));
  randomNumbersCount[index]++;

  stroke(0);
  fill(175);
  int w = width / randomNumbersCount.length;

  for (int i = 0; i < randomNumbersCount.length; i++) {
    rect(i * w, height - randomNumbersCount[i], w - 1, randomNumbersCount[i]);
  }
}