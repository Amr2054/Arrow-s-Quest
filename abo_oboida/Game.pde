void levels(){
background(0); 
skymenu=loadImage("bg5.jpg");
image(skymenu,width/2,height/2);
}

void scoreboard(){
  score =loadImage("bg3.png");
  image(score,width/2,87.5);
  if(mode==LEVEL1){
  textSize(65);
  fill(223, 75, 64);
  text("1",1115,105);
  
 
  }
  else{
  textSize(65);
  fill(223, 75, 64);
  text("2",1115,105);
  }
  

}


//void rulesmenu () {
//skyrules=loadImage("download.jpeg");
//image(skyrules,width/2,height/2);
//}

void rulesmenuclicks() {
mode=STARTMENU;
}

void startmenu () { 
sky=loadImage("bg1.png");
imageMode(CENTER);
image(sky,960,540);


}

void startmenuclicks() {
if(mouseX>860 && mouseX<1054 && mouseY>778 && mouseY<863){ 
mode=LEVEL1;
}
//if(mouseX>525 && mouseX<725 && mouseY>400 && mouseY<500){
  //mode=RULESMENU;
//}
}

void scoremenu () {

}
void scoremenuclicks() {
mode=STARTMENU;
}

void level2 () {

}
void level2clicks() {
mode=SCOREMENU;

}

void mouseReleased(){
if(mode==STARTMENU){
  startmenuclicks();
}
//}else if(mode==RULESMENU){
//  rulesmenuclicks();
else if(mode==LEVEL1){
  level1clicks();
}
//}else if(mode==LEVEL2){
//  level2clicks();
//}else if(mode==SCOREMENU){
//  scoremenuclicks();
//}
}
