
int nbBalls = 5;
ArrayList<Ball> balls = new ArrayList<Ball>();

void setup(){
  size(1000, 600,P3D);
  for(int i = 0; i < nbBalls; i++){
      float x = random(width);
      float y = random(height);
      float radius = random(10, 30);
      balls.add(new Ball(x, y, 0, radius));  
    }
}

void draw(){
  background(0);
  noStroke();
  lights();
  
   for(int i = 0; i < nbBalls; i = i+1 ){
//    //float x = balls.get(i).getX();
//    //float y = balls.get(i).getY();
//    //println(" ball  ",i," ",x," ",y);
//    //if(x - balls.get(i).getRadius()< 0){
//    //  fill(255,0,0);
//    //  balls.get(i).inverseDx();
//    //}
//    //else{
//    //  if(x+ balls.get(i).getRadius() > width){

//    //    fill(0,255,0);
//    //    balls.get(i).inverseDx();
//    //  }
//    //}
//    //if(y - balls.get(i).getRadius() < 0){

//    //  fill(0,0,255);
//    //  balls.get(i).inverseDy();
//    //}
//    //else{
//    //  if(y + balls.get(i).getRadius() > height){

//    //      fill(55,55,100);
//    //     balls.get(i).inverseDy();
//    //  }
//    //}
//    //if(balls.get(i).getX() > 100){
//    //  println(i);
//    //}
      balls.get(i).move();
      balls.get(i).checkBoundaries();
      balls.get(i).display();  
   }
   
//   ball.display();

}
