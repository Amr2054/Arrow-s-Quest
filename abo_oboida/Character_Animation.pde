 void charanim(){
  image(layer[layerIndex],50,mouseY);
if (frameCount % layerDelay == 0) {
    layerIndex = (layerIndex + 1) % layer.length;
  }
 }
