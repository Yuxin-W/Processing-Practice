 class Star{
  float radius;
  float angle;
  float distance;
  float orbitspeed;
  Star[] star;
  
  Star(float r, float d){
    radius = r;
    distance = d;
    angle = random(TWO_PI);
    orbitspeed = random(0.01, 0.05);
  }
  
 void orbit(){
   angle = angle + orbitspeed;
   if (star != null){
      for (int i = 0; i < star.length; i++){
      }
   }
 } 
     
 void spawnMoons(int total){
   star = new Star[total];
   for (int i = 0; i < star.length; i++){
     float r = radius*random(0.1, 0.4);
     float d = random(75,200);
     star[i] = new Star(r, d);
   }
 }
   
 
 void show(){
   pushMatrix();
   noStroke();
   fill(225,225,225); 
   rotate(angle);//rotate should set before translate
   translate(distance,0);
   ellipse(0, 0, radius*2, radius*2);
   
   if (star != null){
      for (int i = 0; i < star.length; i++){
        star[i].show();
      }
   }
   popMatrix();
 }
 }
