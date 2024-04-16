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
    text((remainingarrows+1)*count,242,49);
    text(remainingarrows,1831,84);
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
    mode=STARTMENU;}
  if (mouseX>900 && mouseX<1107 && mouseY>558 && mouseY<625) {
    Arrowslist.clear();
    count =0;
    arrowcount=0;
    remainingarrows=20;
    mode=LEVEL2;
  }
}
void gameover(){
 image(skymenu,width/2,height/2);
 image(gameover,width/2,height/2);
 remainingarrows=20;
 arrowcount=0;
 count=0;     //make function
  c1=1000;
   Arrowslist.clear();
   ballonList1.clear();
   for(int i=0;i<15;i++){
   ballonList1.add(new redBallon(c1));
   c1+=60;}
}
void gameoverclicks() {
if (mouseX>891 && mouseX<1117 && mouseY>594 && mouseY<675) {
    mode=LEVEL1;
    
}
}
  
void mousePressed() {
  if (mode==STARTMENU) {
    startmenuclicks();
  }
  //}else if(mode==RULESMENU){
  //  rulesmenuclicks();
  else if (mode==LEVEL1) {
    // Left click: Shoot arrow if no arrow is in motion and maximum arrows not reached
    if (mouseButton == LEFT && !arrowmove && arrowcount < 20) 
    {
        level1clicks();
        arrowmove = true;
        arrowcount++;  // Increment the total number of arrows shot
        remainingarrows--;
    }

    // Right click: Reset arrowInMotion flag
    if (mouseButton == RIGHT) {
        arrowmove = false;
    }
  }

   //if(mouseButton == RIGHT){
   //  Arrowslist.clear();
   // }
  
  else if(mode==LEVEL2){
        // Left click: Shoot arrow if no arrow is in motion and maximum arrows not reached
    if (mouseButton == LEFT && !arrowmove && arrowcount < 20) 
    {
        level2clicks();
        arrowmove = true;
        arrowcount++;  // Increment the total number of arrows shot
        remainingarrows--;
    }

    // Right click: Reset arrowInMotion flag
    if (mouseButton == RIGHT) {
        arrowmove = false;
    }
    
  }
  else if(mode==SCOREMENU){
    scoremenuclicks();
  }
  else if (mode==GAMEOVER) {
  gameoverclicks();
  }
}
