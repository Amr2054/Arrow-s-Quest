public class yellowBalloon extends balloon {
  
  yellowBalloon(float _x,float _y){ 
  x=_x;
  y=_y;   
  }
  
  
  public void update() {
    if (y+height/24-123>0) {
      y = y-acc;
    } else{
      y = height+height/24;
      if(acc <=6){
       randomSpeed=random.nextInt(1,6);
       acc+=randomSpeed;
    }
    else{
    acc=3;}
    }
  }
  
  
 public void show() {
    
    imageMode(CENTER);
    image(Yballoon, x, y, width/14, height/10);
   }
  }
