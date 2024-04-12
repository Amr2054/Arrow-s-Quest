class ballon{
  
float x,y=height;
PImage img5;
//PImage img4;
ballon(PImage img3,float _x){
  x=_x;  
  img2=img3;
}
ballon(PImage img6,float _x,float _y){
  this.img5=img6;
  x=_x;
  y=_y;
}


void update(){
  if(y+height/24>0){
  y= y-1;
  }
  else y=height+height/24;
  }
  
  void show(){
  
  imageMode(CENTER);
  image(img5,x,y,width/12,height/12);
}
    
}
