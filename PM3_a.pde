class Dot {
  PVector position;
  PVector velocity;
  float lifespan;

  Dot (PVector l) {
    
    velocity = new PVector(random(-1, 1), random(-1, 0));
    position = new PVector(300,300);
    lifespan = 500.0;
  }

  void run() {
    update();
    display();
  }

  // Method to update position
  void update() {
    
    position.add(velocity);
    lifespan -= 1.1;
  }

  // Method to display
  void display() {
    stroke(255, lifespan);
    fill(255, lifespan);
    ellipse(position.x, position.y, 14,14);
  }

  // Is the particle still useful?
  boolean vanished() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
