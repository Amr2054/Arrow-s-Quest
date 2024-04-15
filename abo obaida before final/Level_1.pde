void ballonv1(){
  
for ( Arrows anArrow : Arrowslist) {

    anArrow.render();
    anArrow.move();
    for(int i =0;i<ballonList1.size();i++){  
   if (anArrow.hit(ballonList1.get(i))){
     ballonList1.remove(i);
     count+=1;
   }

    }
  }
   for (ballon a : ballonList1) {
    a.update();
    a.show();
    
}
}
  void level1clicks(){
  if (Arrowslist.size()<15) {
    Arrowslist.add( new Arrows(40,mouseY) );
  }
}
 
 void nextlvl() {
 if (count==15) {
   mode=SCOREMENU;
  //image(skymenu,width/2,height/2);
 //lvl1comp.resize(1700,0);
 //image(lvl1comp,width/2,height/2);
 
 }
 
 }
 
 void keyPressed() {
 if(key == 'w') {
 println(mouseX);
 println(mouseY);
 }
 
 }
