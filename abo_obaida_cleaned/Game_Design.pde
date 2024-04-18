void startmenu () {
  imageMode(CENTER);
  image(introImg, 960, 540);
}

void levels() {
background(0);
image(bg, width/2, height/2);
}

void scoreboard() {
  
  if (mode==LEVEL1) {
    image(score1, width/2, 87.5);
    textSize(50);
    fill(255);
    text((remainingArrows+1)*popBalloon,62,120);
    text(remainingArrows,1785,120);
  } else if (mode == LEVEL2){
    image(score2, width/2, 87.5);
    textSize(50);
    fill(255);
    text((remainingArrows+1)*popBalloon,62,120);
    text(remainingArrows,1785,120);
  }
}

void loadChar(){
   if(showCharImage){
   image(archerNeutral,90,mouseY);
   }
   else{
   image(archerShoot,90,mouseY);
   }
 }

void loadlvl1Comp () {
 image(bg,width/2,height/2);
 image(lvl1comp,width/2,height/2);     
}

void loadlvl2Comp(){
 image(bg,width/2,height/2);
 image(lvl2comp,width/2,height/2);
 fill(0);
 textSize(40);
 strokeWeight(40);
 text (lvlsc1,1045,423);
 text(lvlsc2,1056,541);
 text(lvlsc1 + lvlsc2,1006,665);
}

void loadEndScreen(){
 image(bg,width/2,height/2);
 image(endgameImg,width/2,height/2);
}

void loadGameOverScreen(){
 image(bg,width/2,height/2);
 image(gameoverImg,width/2,height/2);
 resetLevels();
}

void resetLevels(){
   randomSpeed=random.nextInt(3,6);
   popBalloon=0;
   arrowCount=0;
   remainingArrows=20;
   showCharImage=false;
   arrowMove=false;
   posRBalloon=1000;
   posYBalloon=1000;
   Arrowslist.clear();
   RballoonList.clear();
   YballoonList.clear();
   for(int i=0;i<15;i++){
   RballoonList.add(new redBallon(posRBalloon));
   posRBalloon+=60;
   
   }
    
  boolean[] usedIndices = new boolean[15];
  int[] rand = new int[15];

  for (int i = 0; i < rand.length; i++) {
    int x;
    do {
      x = random.nextInt(15);
    } while (usedIndices[x]);
    usedIndices[x] = true;
    rand[i] = posYBalloon + x * 60;
  }
  for (int i=0; i<12; i++) {
    YballoonList.add(new redBallon(rand[i], random(1080, 1200)));
  }
  for (int i=12; i<15; i++) {
    YballoonList.add(new yellowBallon(rand[i], random(1080, 1200)));
  }
 }
