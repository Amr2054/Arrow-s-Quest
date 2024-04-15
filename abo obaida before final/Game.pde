void levels() {
  background(0);
  image(skymenu, width/2, height/2);
}

void scoreboard() {
  image(score, width/2, 87.5);
  if (mode==LEVEL1) {
    textSize(65);
    fill(223, 75, 64);
    text("1", 1115, 105);
  } else {
    textSize(65);
    fill(223, 75, 64);
    text("2", 1115, 105);
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
  imageMode(CENTER);
  image(sky, 960, 540);
}

void startmenuclicks() {
  if (mouseX>860 && mouseX<1054 && mouseY>778 && mouseY<863) {
    mode=LEVEL1;
  }
  //if(mouseX>525 && mouseX<725 && mouseY>400 && mouseY<500){
  //mode=RULESMENU;
  //}
}

void scoremenu () {
 image(skymenu,width/2,height/2);
 image(lvl1comp,width/2,height/2);
}
void scoremenuclicks() {
  if (mouseX>898 && mouseX<1109 && mouseY>657 && mouseY<739) {
    mode=STARTMENU;
  }
}

void level2 () {
}
void level2clicks() {
  mode=SCOREMENU;
}
void reload(){


}

void mousePressed() {
  if (mode==STARTMENU) {
    startmenuclicks();
  }
  //}else if(mode==RULESMENU){
  //  rulesmenuclicks();
  else if (mode==LEVEL1) {
    if(mouseButton == LEFT){
    level1clicks();
    }
    else if ( mouseButton == RIGHT){
     Arrowslist.clear();
    }
    }
  
  //}else if(mode==LEVEL2){
  //  level2clicks();
  else if(mode==SCOREMENU){
    scoremenuclicks();
  }
}
