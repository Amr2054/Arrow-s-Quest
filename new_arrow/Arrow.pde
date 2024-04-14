class Arrow {
float x1,x2,y1,y2,xspeed;
  Arrow(float _x1 , float _y1 , float _x2 , float _y2){
    x1=_x1;
    y1= _y1;
    x2=_x2;
    y2=_y2;
    xspeed = 0;
  }

void update(){
x1=x1+xspeed;
x2=x2+xspeed;
}


void show(){
strokeWeight(2);
line(x1,y1,x2,y2);

}


void over(){
if (mouseX<160){
y1 = mouseY;
y2=mouseY;
}
  if (mousePressed&&mouseX<160){
   xspeed = 8; 
  }
  
  
}






}
