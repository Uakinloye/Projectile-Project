class Dots {
  ArrayList<Dot> particles;
  PVector origin;

  Dots(PVector position) {
    origin = position.copy();
    particles = new ArrayList<Dot>();
  }

  void addDot() {
    particles.add(new Dot(origin));
  }

  void run() {
    for (int i = particles.size()-4; i >= 0; i--) {
      Dot p = particles.get(i);
      p.run();
      if (p.vanished()) {
        particles.remove(i);
      }
    }
  }
}
