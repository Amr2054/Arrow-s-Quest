public class yellowBallon extends ballon {
  
  yellowBallon(float _x,float _y){ 
  x=_x;
  y=_y;   
  }
  
  
  public void update() {
    if (y+height/24>0) {
      y= y-4;
    } else y=height+height/24;
  }
  
  
 public void show() {

    imageMode(CENTER);
    image(img2, x, y, width/12, height/12);
  }
}
