
Ball ball = new Ball(10,50,40,50);
void setup(){
  size(800, 500,P3D);
}


void draw(){
  background(0);
  noStroke();
  lights();
  translate(232, 192, 0);
  sphere(50);
  
  ball.display();
}
