import java.util.Random;
import processing.sound.*;
PImage introImg , bg , score1 , score2 , Rballoon , Yballoon , Arrows , archerNeutral ,archerShoot , lvl1comp , gameoverImg ,lvl2comp, endgameImg ;
SoundFile bgMusic,balloonPop,arrowShot,bowReload,click;
PFont lvl2font,scorefont;
final int STARTMENU=0;
final int LEVEL1=1;
final int LEVEL2=2;
final int LVL1COMP=3;
final int GAMEOVER=4;
final int LVL2COMP=5;
final int ENDSCREEN=6;
ArrayList<balloon> RballoonList;
ArrayList<balloon> YballoonList;
ArrayList <Arrows> Arrowslist;
int posRBalloon = 1000,posYBalloon=1000,popBalloon=0;         
int mode; 
int arrowCount;
int remainingArrows= 20;
int lvlsc1=0,lvlsc2=0;

Random random = new Random();
int randomSpeed=random.nextInt(3,6);

boolean arrowMove =false, showCharImage = false;

void setup() {
size(1920, 1080,P2D);
mode = STARTMENU;
lvl2font = createFont("lv2font.otf",40);
scorefont = createFont("scorefont.otf",40);
imageMode(CENTER);
Rballoon = loadImage("rbal.png");
Yballoon = loadImage("ybal.png");
Arrows = loadImage("ar.png");
bg = loadImage("bg.png");
score1 = loadImage("score1.png");
score2 = loadImage("score2.png");
introImg = loadImage("main.png");
archerNeutral = loadImage("archerstill.png");
archerShoot = loadImage("archerpull.png");
lvl1comp = loadImage ("lvl1comp.png");
lvl2comp = loadImage("lvl2comp.png");
gameoverImg = loadImage ("gameover.png");
endgameImg= loadImage("endgame2.png");
lvl1comp.resize(1700,0);
archerNeutral.resize(200,0);
archerShoot.resize(200,0);
bgMusic = new SoundFile(this,"bgmusic1.mp3");
balloonPop = new SoundFile(this,"ballonpop.mp3");
arrowShot = new SoundFile(this,"arrowshot.mp3");
bowReload = new SoundFile(this,"bowreload.mp3");
click = new SoundFile(this,"click.mp3");
bgMusic.loop();
RballoonList = new ArrayList<balloon>();
YballoonList = new ArrayList<balloon>();
Arrowslist= new ArrayList <Arrows>();
for (int i=0; i<15; i++) {
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

void draw (){
if(mode==STARTMENU){
  startmenu();
}

else if(mode==LEVEL1){
 levels();
 loadChar();
 balloonArrow1();
 scoreboard();
 tolvl1Comp();
 if(arrowCount==20 && arrowCount>popBalloon && !arrowMove){
 mode=GAMEOVER;
 }

} 
else if(mode==LEVEL2){
 levels();
 loadChar();
 balloonArrow2();
 scoreboard();
 tolvl2Comp();
 if(arrowCount==20 && arrowCount>popBalloon &&!arrowMove){
 mode=GAMEOVER;
 }
  
}
else if(mode==LVL1COMP){
 loadlvl1Comp();
}
else if (mode==LVL2COMP){
loadlvl2Comp();
}
else if (mode==ENDSCREEN){
loadEndScreen();
}
else if(mode==GAMEOVER){
loadGameOverScreen();
}
}
void keyPressed(){
if ( key== 'w'){
println(mouseX);
println(mouseY);
}
}
