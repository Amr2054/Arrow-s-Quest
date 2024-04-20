// Functions used to detect that the arrow is out of screen to remove it from the array & pop the balloon that was hit by the arrow
void balloonArrow1(){
  
for(int j=0;j<Arrowslist.size();j++){
  Arrows arrow = Arrowslist.get(j);
  arrow.render();
  arrow.move();

    if (arrow.outscreen()){
      Arrowslist.remove(j);
    }
    for(int i =0;i<RballoonList.size();i++){  
    if(arrow.hit(RballoonList.get(i))){
     RballoonList.remove(i);
     popBalloon+=1;
     balloonPop.play();
   }

    }
  }
   for (balloon a : RballoonList) {
    a.update();
    a.show();
    
}
}

void balloonArrow2(){
  
for(int j=0;j<Arrowslist.size();j++){
  Arrows arrow = Arrowslist.get(j);
  arrow.render();
  arrow.move();
    if (arrow.outscreen()){
      Arrowslist.remove(j);
    }
    for(int i =0;i<YballoonList.size();i++){  
    if(arrow.hit(YballoonList.get(i))){
     balloonPop.play();
     YballoonList.remove(i);
     popBalloon+=1;
   }

    }
  }
   for (balloon a : YballoonList) {
    a.update();
    a.show();
 }
}
