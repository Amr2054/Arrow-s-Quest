void ballonv1(){
  
//for ( Arrows anArrow : Arrowslist) {
for(int j=0;j<Arrowslist.size();j++){
  Arrows arrow = Arrowslist.get(j);
  arrow.render();
  arrow.move();
    //anArrow.render();
    //anArrow.move();
    if (arrow.outscreen()){
      Arrowslist.remove(j);
    }
    for(int i =0;i<ballonList1.size();i++){  
  // if (anArrow.hit(ballonList1.get(i))){
    if(arrow.hit(ballonList1.get(i))){
     ballonList1.remove(i);
     ballonpop.play();
     popballon+=1;
   }

    }
  }
   for (ballon a : ballonList1) {
    a.update();
    a.show();
    
}
}
  void level1clicks(){
  if (Arrowslist.size()<20) {
    Arrowslist.add( new Arrows(160,mouseY) );
    arrowshot.play();
  }
}
 
 void nextlvl() {
 if (popballon==15) {
   lvlsc1=0;
   lvlsc1= (remainingarrows+1)*popballon;
   reset();  
   mode=SCOREMENU; 
 }
 
 }
 
 void keyPressed() {
 if(key == 'w') {
 println(mouseX);
 println(mouseY);
 }
 
 }
 
