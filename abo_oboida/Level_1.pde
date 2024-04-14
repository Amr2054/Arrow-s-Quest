void ballonv1(){
  for (ballon a : ballonList1) {
    a.update();
    a.show();
  }
}

  void level1clicks(){
  if (arrows.size() < 15) {
    arrows.add(new PVector(160, mouseY));
  }
}
 
