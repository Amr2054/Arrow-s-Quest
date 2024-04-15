class Arrows {
float x1,x2,y1,y2;
float speed;


Arrows(float X1, float X2, float Y1 , float Y2) {

  x1=X1;
  x2=X2;
  y1=Y1;
  y2=Y2;
  
  speed=8;

}
 void render() {
 
   stroke(2);
   line(x1,y1,x2,y2);
 
 }
 
 void move() {
 
 x1 += speed;
 x2 += speed;
 
 }
 

}
