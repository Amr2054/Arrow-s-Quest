
public class redBallon extends ballon {
 
  redBallon( float _x){
    x=_x;
  }
  redBallon (float _x,float _y){
  x=_x;
  y=_y;
  
  }
 
 public void update() {
    if (y+height/24>0) {
      y= y-2;
    } else y=height+height/24;
  }
  
  
  public void show() {

    imageMode(CENTER);
    image(img1, x, y, width/12, height/12);
  }
}
