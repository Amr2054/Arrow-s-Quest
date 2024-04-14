
void arrow() {
  for (int i = 0; i < arrows.size(); i++) {
    PVector arrow = arrows.get(i);

    image(arr,arrow.x,arrow.y,width/22,height/8);
    arrow.x += 20;
  }
}
