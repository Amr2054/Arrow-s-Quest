void startmenu () { // Function used to Display the start menu image
  imageMode(CENTER);
  image(introImg, 960, 540);
}
void instruction(){ // Function used to Display the instruction menu image
  image(inst,width/2,height/2);
  resetLevels();
}

void levels() { // Function used to Display the background image
  background(0);
  image(bg, width/2, height/2);
}

void scoreboard() { // Function used to Display the scoreboard image
  textFont(scorefont, 50);
  if (mode==LEVEL1) {
    image(score1, width/2, 87.5);
    fill(255);
    text((remainingArrows+1)*popBalloon, 62, 120);
    text(remainingArrows, 1785, 120);
  } else if (mode == LEVEL2) {
    image(score2, width/2, 87.5);
    fill(255);
    text((remainingArrows+1)*popBalloon, 62, 120);
    text(remainingArrows, 1785, 120);
  }
}

void loadChar() { // Function used to Display the character image
  if (mouseY>206) {
    if (showCharImage) {
      image(archerNeutral, 90, mouseY);
    } else {
      image(archerShoot, 90, mouseY);
    }
  } else {
    if (showCharImage) {
      image(archerNeutral, 90, 206);
    } else {
      image(archerShoot, 90, 206);
    }
  }
}

void loadlvl1Comp () { // Function used to Display level 1 completed image
  image(bg, width/2, height/2);
  image(lvl1comp, width/2, height/2);
}

void loadlvl2Comp() { // Function used to Display level 2 completed image & scores
  image(bg, width/2, height/2);
  image(lvl2comp, width/2, height/2);
  textFont(lvl2font);
  fill(0);
  strokeWeight(40);
  text (lvlsc1, 1045, 436);
  text(lvlsc2, 1056, 560);
  text(lvlsc1 + lvlsc2, 1006, 680);
}

void loadEndScreen() { // Function used to Display endgame image
  image(bg, width/2, height/2);
  image(endgameImg, width/2, height/2);
}

void loadGameOverScreen() { // Function used to Display game over image
  image(bg, width/2, height/2);
  image(gameoverImg, width/2, height/2);
  resetLevels();
}

void resetLevels() { // Function used to reset everything in the game in case of replaying the game
  randomSpeed=random.nextInt(3, 6);
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
  for (int i=0; i<15; i++) {
    RballoonList.add(new redBalloon(posRBalloon));
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
    YballoonList.add(new redBalloon(rand[i], random(1080, 1400)));
  }
  for (int i=12; i<15; i++) {
    YballoonList.add(new yellowBalloon(rand[i], random(1080, 1400)));
  }
}
