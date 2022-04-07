Dots ps;
void setup() {
  size(600, 600);
  ps = new Dots(new PVector(width/2, 50));
}

void draw() {
  background(0);
  ps.addDot();
  ps.run();
}
