class Ball {
  float radius;
  PVector location;
  PVector velocity;

  Ball(float r) {
    radius = r;

    location = new PVector(0, 0);
    velocity= new PVector(5, 3);
  }

  void show() {
    fill(0);
    ellipse(location.x, location.y, radius, radius );
  }

  void move() {
    location.add(velocity);
  }

  void bump() {
    if (location.x > width || location.x <= 0) {
      velocity.x = velocity.x*-1;
      if (location.y > height || location.y <= 0) {
        velocity.y = velocity.y*-1;
      }
    }
  }
}
