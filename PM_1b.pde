int value = 0;

PVector location;
PVector velocity;
PVector gravity;
boolean ballActivated = false;

void setup() {
  size(300,300);
  smooth();
  location = new PVector(0,120);
  velocity = new PVector(5.5,9);
  gravity = new PVector(0,0.6);
}

   
void draw() {
  background(255);
  location.add(velocity);
  velocity.add(gravity);

   if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    velocity.y = velocity.y * -0.99;
    location.y = height;
  }
  fill(75);
  ellipse(location.x,location.y, value, value);
}


  void mouseClicked() {
    if (value == 0) {
      value = 25;
      ballActivated = true;
    } else {
      value = 0;
    }
  }
