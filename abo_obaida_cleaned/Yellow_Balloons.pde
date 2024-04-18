public class yellowBallon extends balloon {
  
  yellowBallon(float _x,float _y){ 
  x=_x;
  y=_y;   
  }
  
  
  public void update() {
    if (y+height/24-123>0) {
      y = y-randomSpeed;
    } else y = height+height/24;
  }
  
  
 public void show() {
    
    imageMode(CENTER);
    image(Yballoon, x, y, width/14, height/10);
   }
  }
