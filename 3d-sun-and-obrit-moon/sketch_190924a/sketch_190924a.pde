import peasy.*;


Planet sun; 
 
PeasyCam cam;

void setup(){
  size(800,600, P3D);
  cam = new PeasyCam(this, 500);
  sun = new Planet(50, 0, 0);//radius, distance, orbit
  sun.spawnMoons(4, 1);
}

void draw(){
  background(33, 33, 33);
  lights();//to give light in 3d preset
  translate(width/2, height/2);
  sun.show();
  sun.orbit();
}
