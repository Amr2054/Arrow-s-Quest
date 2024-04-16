void ballonv2(){
  
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
    for(int i =0;i<ballonList2.size();i++){  
  // if (anArrow.hit(ballonList1.get(i))){
    if(arrow.hit(ballonList2.get(i))){
     ballonList2.remove(i);
     count+=1;
   }

    }
  }
   for (ballon a : ballonList2) {
    a.update();
    a.show();
    
}
}
 
  void level2clicks(){
  if (Arrowslist.size()<20) {
    Arrowslist.add( new Arrows(160,mouseY+5) );
  }
}
