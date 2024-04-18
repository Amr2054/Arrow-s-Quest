void mousePressed() {
  if (mode==STARTMENU) {
    startMenuClicks();
  } else if (mode==LEVEL1) {
    if (mouseButton == LEFT && !arrowMove && arrowCount < 20)
    {
      lvl1Clicks();
      arrowMove = true;
      arrowCount++;
      remainingArrows--;
      showCharImage=true;
    }
    if (mouseButton == RIGHT) {
      arrowMove = false;
      showCharImage=false;
      bowReload.play();
    }
  } else if (mode==LEVEL2) {
    if (mouseButton == LEFT && !arrowMove && arrowCount < 20)
    {
      lvl2Clicks();
      arrowMove = true;
      arrowCount++;
      remainingArrows--;
      showCharImage=true;
    }


    if (mouseButton == RIGHT) {
      arrowMove = false;
      showCharImage=false;
      bowReload.play();
    }
  } else if (mode==LVL1COMP) {
    lvl1CompClicks();
  } else if (mode==LVL2COMP) {
    lvl2CompClicks();
  } else if (mode ==ENDSCREEN) {
    endScreenClicks();
  } else if (mode==GAMEOVER) {
    gameoverClicks();
  }
}

void startMenuClicks() {
  if (mouseX>860 && mouseX<1054 && mouseY>778 && mouseY<863) {
    mode=LEVEL1;
    click.play();
  }
}

void lvl1Clicks() {
  if (mouseY>206) {
    if (Arrowslist.size()<20) {
      Arrowslist.add( new Arrows(160, mouseY) );
      arrowShot.play();
    }
  } else {
    if (Arrowslist.size()<20) {
      Arrowslist.add( new Arrows(160, 206) );
      arrowShot.play();
    }
  }
}

void lvl1CompClicks() {
  if (mouseX>898 && mouseX<1109 && mouseY>657 && mouseY<739) {
    mode=STARTMENU;
    click.play();
  }
  if (mouseX>900 && mouseX<1107 && mouseY>558 && mouseY<625) {
    mode=LEVEL2;
    click.play();
  }
}

void lvl2Clicks() {
  if (mouseY>206) {
    if (Arrowslist.size()<20) {
      Arrowslist.add( new Arrows(160, mouseY) );
      arrowShot.play();
    }
  } else {
    if (Arrowslist.size()<20) {
      Arrowslist.add( new Arrows(160, 206) );
      arrowShot.play();
    }
  }
}

void lvl2CompClicks() {
  if (mouseX>710 && mouseX<1206 && mouseY>752 && mouseY<871) {
    mode=ENDSCREEN;
    click.play();
  }
}

void endScreenClicks() {
  if (mouseX>891 && mouseX<1117 && mouseY>594 && mouseY<675) {
    mode=STARTMENU;
    click.play();
  }
}

void gameoverClicks() {
  if (mouseX>891 && mouseX<1117 && mouseY>594 && mouseY<675) {
    mode=LEVEL1;
    click.play();
  }
}
