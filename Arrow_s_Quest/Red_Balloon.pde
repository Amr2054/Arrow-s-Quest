public class redBalloon extends balloon {
 
  redBalloon( float _x){ //constructor used in level 1
    x=_x;
  }
  redBalloon (float _x,float _y){ //constructor used in level 2
  x=_x;
  y=_y;
  
  }
 
 public void update() { //Function to update the position of the balloon
    if (y+height/24-169>0) {
      y= y-2;
    } else y=height+height/24;
  }
  
  
  public void show() { //Function to draw the balloon
    if(visible){
    imageMode(CENTER);
    image(Rballoon, x, y, width/14, height/10);
  }
  
}
}
