void levels() {
  background(0);
  image(bg, width/2, height/2);
}

void scoreboard() {
  
  if (mode==LEVEL1) {
    image(score1, width/2, 87.5);
    textSize(50);
    fill(255);
    text((remainingarrows+1)*popballon,62,120);
    text(remainingarrows,1785,120);
  } else if (mode == LEVEL2){
    image(score2, width/2, 87.5);
    textSize(50);
    fill(255);
    text((remainingarrows+1)*popballon,62,120);
    text(remainingarrows,1785,120);
  }
}

void startmenu () {
  imageMode(CENTER);
  image(intro, 960, 540);
  image(intro2,width/2,height/2);

}

void startmenuclicks() {
  if (mouseX>860 && mouseX<1054 && mouseY>778 && mouseY<863) {
    mode=LEVEL1;
    click.play();
  }
  //if(mouseX>525 && mouseX<725 && mouseY>400 && mouseY<500){
  //mode=RULESMENU;
  //}
}

void scoremenu () {
 image(bg,width/2,height/2);
 image(lvl1comp,width/2,height/2);
}
void scoremenuclicks() {
  if (mouseX>898 && mouseX<1109 && mouseY>657 && mouseY<739) {
    mode=STARTMENU;
    click.play();
  }
  if (mouseX>900 && mouseX<1107 && mouseY>558 && mouseY<625) {
    mode=LEVEL2;
    click.play();
  }
  
}
void scoremenu2(){
 image(bg,width/2,height/2);
 image(lvl2comp,width/2,height/2);
 fill(0);
 textSize(40);
 strokeWeight(40);
 text (lvlsc1,1045,436);
 text(lvlsc2,1056,555);
 text(lvlsc1 + lvlsc2,1006,680);
}
void scoremenuclicks2(){
if (mouseX>710 && mouseX<1206 && mouseY>752 && mouseY<871) {
    mode=ENDSCREEN;
    click.play();
}
}
void endscreen(){
 image(bg,width/2,height/2);
 image(endgame,width/2,height/2);
}
void endscreenclicks(){
if (mouseX>891 && mouseX<1117 && mouseY>594 && mouseY<675) {
    mode=STARTMENU;
    click.play();
}
}
void gameover(){
 image(bg,width/2,height/2);
 image(gameover,width/2,height/2);
 reset();
}

void gameoverclicks() {
if (mouseX>891 && mouseX<1117 && mouseY>594 && mouseY<675) {
    mode=LEVEL1;
    click.play();
    
}
}
  
void mousePressed() {
  if (mode==STARTMENU) {
    startmenuclicks();
  }

  else if (mode==LEVEL1) {
    if (mouseButton == LEFT && !arrowmove && arrowcount < 20) 
    {
        level1clicks();
        arrowmove = true;
        arrowcount++;  
        remainingarrows--;
        showimage=true;
    }
    if (mouseButton == RIGHT) {
        arrowmove = false;
        showimage=false;
        bowreload.play();
    }
  }
  else if(mode==LEVEL2){
    if (mouseButton == LEFT && !arrowmove && arrowcount < 20) 
    {
        level2clicks();
        arrowmove = true;
        arrowcount++;  
        remainingarrows--;
        showimage=true;
    }


    if (mouseButton == RIGHT) {
        arrowmove = false;
        showimage=false;
        bowreload.play();
    }
    
  }
  else if(mode==SCOREMENU){
    scoremenuclicks();
  }
  else if(mode==SCOREMENU2){
    scoremenuclicks2();
  }
  else if (mode ==ENDSCREEN){
  endscreenclicks();
  }
  else if (mode==GAMEOVER) {
  gameoverclicks();
  }
}
void reset(){
   randomspeed=random.nextInt(3,6);
   popballon=0;
   arrowcount=0;
   remainingarrows=20;
   showimage=false;
   arrowmove=false;
   c1=1000;
   c2=1000;
   Arrowslist.clear();
   ballonList1.clear();
   ballonList2.clear();
   for(int i=0;i<15;i++){
   ballonList1.add(new redBallon(c1));
   c1+=60;
   
   }
    
     boolean[] usedIndices = new boolean[15];
  int[] rand = new int[15];

  for (int i = 0; i < rand.length; i++) {
    int x;
    do {
      x = random.nextInt(15);
    } while (usedIndices[x]);
    usedIndices[x] = true;
    rand[i] = c2 + x * 60;
  }
  for (int i=0; i<12; i++) {
    ballonList2.add(new redBallon(rand[i], random(1080, 1200)));
  }
  for (int i=12; i<15; i++) {
    ballonList2.add(new yellowBallon(rand[i], random(1080, 1200)));
  }
 
 
 
 }
