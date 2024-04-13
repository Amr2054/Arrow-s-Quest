int mode;
PImage sky,scroll,skymenu,skyrules;
final int STARTMENU=0;
final int RULESMENU=1;
final int LEVEL1=2;
final int LEVEL2=3;
final int SCOREMENU=4;
int layerIndex= 0;
int layerDelay=2;
PImage[] layer=new PImage[22];

void setup(){
size(1280,720);
mode=STARTMENU;
imageMode(CENTER);
for(int i = 0; i<layer.length;i++){
layer[i] = loadImage("shoot_stand_"+i+".png");
layer[i].resize(100,0);
}
frameRate(60);
}
void draw() {
if(mode==STARTMENU){
  startmenu();
}else if(mode==RULESMENU){
  rulesmenu();
}else if(mode==LEVEL1){
  level1();
  image(layer[layerIndex],50,mouseY);
if (frameCount % layerDelay == 0) {
    layerIndex = (layerIndex + 1) % layer.length;}
}else if(mode==LEVEL2){
  level2();
}else if(mode==SCOREMENU){
  scoremenu();
}else { println("Mode error mode = "+mode);

}
}
