class Arrows {
float x1,y1;
float speed;


Arrows(float X1 , float Y1) {

  x1=X1;
  y1=Y1;
  speed=25;

}
 void render() {
 
 image(arr,x1,y1,width/22,height/8);
 
 }
 
 void move() {
 
 x1 += speed;
 
 }
 
 boolean hit ( ballon b1){
 float distance = dist(x1,y1,b1.x,b1.y);
 return distance < 35 ;
}
boolean outscreen(){
return x1-35>width;
}
}
