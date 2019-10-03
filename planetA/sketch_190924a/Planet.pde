 class Planet{
  float radius;
  float angle;
  float distance;
  float orbitspeed;
  Planet[] planets;
  
  Planet(float r, float d){
    radius = r;
    distance = d;//the distance from canvas centre, also the rotating centre
    angle = random(TWO_PI);
    orbitspeed = random(0.01, 0.05);
  }
  
 void orbit(){
   angle = angle + orbitspeed;
   if (planets != null){
      for (int i = 0; i < planets.length; i++){
      }
   }
 } 
     
 void spawnMoons(int total){
   planets = new Planet[total];
   for (int i = 0; i < planets.length; i++){
     float r = radius*random(0.1, 0.4);
     float d = random(75,200);
     planets[i] = new Planet(r, d);
   }
 }
   
 
 void show(){
   pushMatrix();
   noStroke();
   fill(225,225,225); 
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
