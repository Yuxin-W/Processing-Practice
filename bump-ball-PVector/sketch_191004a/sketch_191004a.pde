Ball a;

void setup() {
  size(800,600);
  a = new Ball(30);
}

void draw() {
  background(255);
  a.show();
  a.move();
  a.bump();
}
