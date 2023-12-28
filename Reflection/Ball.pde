public class Ball {
  
 private float radius;
 private float x, y, z;
 private float dx, dy, dz;
 private color couleur;
 
 public Ball(float x, float y, float z, float radius){
   this.x = x;
   this.y = y;
   this.z = z;
   this.radius = radius;
   dx = dy = 1;
   dz = 0;
   couleur = color(255,0,0);
 }
  
 public void display(){
   pushMatrix();
   fill(couleur);
   translate(x,y,z);
   sphere(radius);
   popMatrix();
 }
 
 void checkBoundaries(){
    if (x - radius < 0) {
      couleur = color(0,0,255);
      dx = -dx;  
    }
    else{
      if (x + radius > width) {
        couleur = color(0,250,0);
        dx = -dx;  
      }
    }
    if (y - radius < 0  ) {
      couleur = color(155,0,100);
      dy = -dy; 
    }
    else{
      if (y + radius > height) {
        couleur = color(250,0,0);
        dy = -dy; 
      }
    }
 }
 
 public void move(){
    x+=dx;
    y+=dy;
    z+=dz;
 }
 
  void setSpeed(float dx, float dy, float dz) {
    this.dx = dx;
    this.dy = dy;
    this.dz = 0;
  }
 
 public float getX(){
   return x;
 }
 
 public float getY(){
   return y;
 }
 
 public float getZ(){
   return z;
 }
 
 public float getRadius(){
   return radius;
 }
}
