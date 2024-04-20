class Arrows {
float x1,y1;
float speed;


Arrows(float X1 , float Y1) {

  x1=X1;
  y1=Y1;
  speed=10;

}
 void render() {
 //Function to show the arrow
 image(Arrows,x1,y1,width/22,height/8);
 
 }
 
 void move() {
 //Function to move the arrow
 x1 += speed;
 
 }
 // calculate the distance between the balloon and the arrow
 boolean hit ( balloon b1){
 float distance = dist(x1,y1,b1.x,b1.y);
 return distance < 55 ;
}
boolean outscreen(){
return x1-35>width;
}
}
