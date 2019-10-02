String[] chooseStar= {"Star", "Planet-1", "Planet-2"};
int index=0;
boolean a = true;//switch condition

void setup() {
  frameRate(5);

  size(800, 600);
  textSize(48);
  textAlign(CENTER);
}


void draw() {
  background(33, 33, 33);
  if (a) {
    text(chooseStar[index], 200, 300);
//    println(index);
    if (index<chooseStar.length-1) {   
      index=index+1;
    } else {
      index=0;
    }
  }
  else{
     text(chooseStar[index], 200, 300);
  }
}


void mousePressed() {
  a = !a;
}
