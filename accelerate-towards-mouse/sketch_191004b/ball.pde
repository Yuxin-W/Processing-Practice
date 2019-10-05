class Ball {
  float radius;
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  

  Ball(float r, float ts) {
    radius = r;
    location = new PVector(random(width), random(height));
    velocity = new PVector(2, 1);
//    acceleration = new PVector(0.02,0.01);
    topspeed = ts;
  }


  void display() {
    noStroke();
    fill(239, 113, 76);
    ellipse(location.x, location.y, radius, radius);
  }

  void update() {
    location.add(velocity);
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
 
  void accelerate(){
    PVector mouse = new PVector(mouseX, mouseY);
    PVector direction = PVector.sub(mouse, location);//static function
    
    float a;
    float b;
    a = direction.mag();//a values from (0-250);
    b = map(a,0,250,1,0);
    //println(b);
    
    direction.normalize();//unitise
    direction.mult(b);
    acceleration = direction;// get the value of acceleration (PVector)  
    println(direction.mag());//the closer the ball get closed to mouse, the bigger the acceleration is
        
        
    velocity.add(acceleration);
    velocity.limit(topspeed);
  }
}
