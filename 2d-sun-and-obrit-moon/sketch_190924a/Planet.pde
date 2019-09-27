 class Planet{
  float radius;
  float angle;
  float distance;
  float orbitspeed;
  Planet[] planets;
  
  Planet(float r, float d, float o){
    radius = r;
    distance = d;
    orbitspeed = o;
    angle = random(TWO_PI);
  }
  
 void orbit(){
//   float o = random(0.02, 0.07);
   angle = angle + orbitspeed;
   if (planets != null){
      for (int i = 0; i < planets.length; i++){
        planets[i].orbit();
      }
   }
 } 
     
 void spawnMoons(int total, int level){
   planets = new Planet[total];
   for (int i = 0; i < planets.length; i++){
     float r = (radius/level)*random(0.2, 0.4);
     float d = random(80,240);
     float o = random(0.02, 0.05);
     planets[i] = new Planet(r, d/level, o);//change distance according to level at here
     if(level < 2){
        int num = int(random(0, 2));//the example of define a int val
        planets[i].spawnMoons(num, level + 1);
     }
   }
 }
   
 
 void show(){
   pushMatrix();
   noStroke();
   fill(246, 182, 0); 
   rotate(angle);//rotate should set before translate
   translate(distance,0);
   ellipse(0, 0, radius*2, radius*2);  
   if (planets != null){
      for (int i = 0; i < planets.length; i++){
        planets[i].show();
      }
   }
   popMatrix();
 }
 }
