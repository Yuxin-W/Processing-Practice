Ball ball1;

void setup(){
  size(600,400);
  smooth();
  
  ball1 = new Ball(10,5); 
}

void draw(){
  background(33,33,33,0.8);
  
  ball1.display();
  ball1.update();
  ball1.checkEdges();
  ball1.accelerate();
  
}
