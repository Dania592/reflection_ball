public class Ball {
  
 float radius;
 float x, y, z;
 
 Ball(float x, float y, float z, float radius){
   this.x = x;
   this.y = y;
   this.z = z;
   this.radius = radius;
 }
  
 void display(){
   translate(x,y,z);
   sphere(radius);
 }
 
  
  
  
}
