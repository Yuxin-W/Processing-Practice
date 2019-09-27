Planet sun;

void setup(){
  size(800,600);
  sun = new Planet(50, 0, 0);//radius, distance, orbit
  sun.spawnMoons(4, 1);
}

void draw(){
  background(33, 33, 33);
  translate(width/2, height/2);
  sun.show();
  sun.orbit();
}
