int nbBalls = 20;
ArrayList<Ball> balls = new ArrayList<Ball>();

void setup(){
  size(1000, 600,P3D);
  for(int i = 0; i < nbBalls; i++){
      float x = random(10, width);
      float y = random(10, height);
      float z = random(-10, 80);
      float radius = random(5, 60);
      balls.add(new Ball(x, y, z, radius));
      balls.get(i).setSpeed(random(1, 5), random(1, 5), random(1, 5));
    }
}

void draw(){
  background(0);
  noStroke();
  lights();
  
  for(int i = 0; i < nbBalls; i = i+1 ){
    balls.get(i).move();
    balls.get(i).checkBoundaries();
    balls.get(i).display();  
  }
  
}
