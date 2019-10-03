String[] chooseStar= {"Star", "PlanetA", "PlanetB"};
int index=0;
boolean a = true;//switch condition

Star star;
PlanetA planetA;//the frist planetA means class, the second planetA means object's name
PlanetB planetB;

void setup() {
  frameRate(20);

  size(800, 600);
  textSize(36);
  textAlign(CENTER);
  
  star = new Star(50, 0);
  star.spawnMoons(5);
  planetA = new PlanetA(30,0);
  planetA.spawnMoons(2);
  planetB = new PlanetB(20,0);
  planetB.spawnMoons(0);
}


void draw() {
  translate(width/2, height/2);
  background(33, 33, 33);
  if (a) {
    text(chooseStar[index], 0, 250);
    //    println(index);
    if (index<chooseStar.length-1) {   
      index=index+1;
    } else {
      index=0;
    }
  } else {
    text(chooseStar[index], 0, 250);
  }
  
  if(index <= 0){
    star.show();
    star.orbit();
  }else if(index <= 1 && index>0){
    planetA.show();
    planetA.orbit();
   }else{
    planetB.show();
    planetB.orbit();
  }
}


void mousePressed() {
  a = !a;
}
