void startmenu () {
  
sky=loadImage("download.jpeg");
scroll=loadImage("scroll3.png");
image(sky,width/2,height/2);
scroll.resize(900,0);
image(scroll,width/2,height/2);
fill(0,0,0,5);
rect(525,250,200,100);
rect(525,400,200,100);
fill(255,0,0);
textSize(80);
text("Play",550,320);
text("Rules",535,470);

}
void startmenuclicks() {
if(mouseX>525 && mouseX<725 && mouseY>250 && mouseY<350){
mode=LEVEL1;
}
if(mouseX>525 && mouseX<725 && mouseY>400 && mouseY<500){
  mode=RULESMENU;
}
}
