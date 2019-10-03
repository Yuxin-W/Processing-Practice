class PlanetA {
  float radius;
  float angle;
  float distance;
  float orbitspeed;
  float positionX;
  float positionY;

  PlanetA[] planets;

  PlanetA(float r, float d) {
    radius = r;
    distance = d;
    angle = random(TWO_PI);
    orbitspeed = random(0.01, 0.05);
  }

  void orbit() {
    angle = angle + orbitspeed;
    if (planets != null) {
      for (int i = 0; i < planets.length; i++) {
      }
    }
  } 

  void spawnMoons(int total) {
    planets = new PlanetA[total];
    for (int i = 0; i < planets.length; i++) {
      float r = radius*random(0.1, 0.4);
      float d = random(75, 200);
      planets[i] = new PlanetA(r, d);
    }
  }


  void show() {
    pushMatrix();
    noStroke();
    fill(60, 173, 225); 
    rotate(angle);//rotate should set before translate
    translate(distance, 0);

    positionX= mouseX;
    positionY= mouseY;   
    ellipse(0, 0, radius*2, radius*2);

    if (planets != null) {
      for (int i = 0; i < planets.length; i++) {
        planets[i].show();
      }
    }
    popMatrix();
  }
}
