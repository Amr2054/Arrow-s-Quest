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
  if (Arrowslist.size()<20) {
    Arrowslist.add( new Arrows(160,mouseY+5) );
  }
}
 
 void nextlvl() {
 if (count==15) {
   mode=SCOREMENU;
   count=0;
   remainingarrows=20;
   c1=1000;
   Arrowslist.clear();
   ballonList1.clear();
   for(int i=0;i<15;i++){
   ballonList1.add(new redBallon(c1));
   c1+=60;
   
   }
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
