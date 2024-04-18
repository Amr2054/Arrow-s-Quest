import java.util.Random;
import processing.sound.*;
PImage intro, bg,score1,score2, img1, img2 , arr, archerstill,archerpull,lvl1comp,gameover,lvl2comp,endgame;
SoundFile bgmusic,ballonpop,arrowshot,bowreload,click;
final int STARTMENU=0;
final int LEVEL1=2;
final int LEVEL2=3;
final int SCOREMENU=4;
final int GAMEOVER=5;
final int SCOREMENU2=6;
final int ENDSCREEN= 7;
ArrayList<ballon> ballonList1;
ArrayList<ballon> ballonList2;
ArrayList <Arrows> Arrowslist;
Random random = new Random();
int layerIndex= 0;
int layerDelay=2;
int c1 =1000,c2=1000, mode;
int popballon=0;
boolean arrowmove =false, showimage = false;
int arrowcount;
int remainingarrows= 20;
int randomspeed=random.nextInt(3,6);
int lvlsc1=0,lvlsc2=0;

Arrows test;
void setup() {
  size(1920, 1080,P2D);
  mode=STARTMENU;
  bgmusic = new SoundFile(this,"bgmusic1.mp3");
  ballonpop = new SoundFile(this,"ballonpop.mp3");
  arrowshot = new SoundFile(this,"arrowshot.mp3");
  bowreload = new SoundFile(this,"bowreload.mp3");
  click = new SoundFile(this,"click.mp3");
  imageMode(CENTER);
  img1 =loadImage("rbal.png");
  img2 =loadImage("ybal.png");
  arr = loadImage("ar.png");
  bg=loadImage("bg.png");
  score1 =loadImage("score1.png");
  score2=loadImage("score2.png");
  intro=loadImage("main.png");
  archerstill=loadImage("archerstill.png");
  archerpull=loadImage("archerpull.png");
  lvl1comp = loadImage ("lvl1comp.png");
  lvl2comp = loadImage("lvl2comp.png");
  gameover = loadImage ("gameover.png");
  endgame= loadImage("endgame2.png");
  lvl1comp.resize(1700,0);
  archerstill.resize(200,0);
  archerpull.resize(200,0);
  frameRate(100);
  bgmusic.loop();
 // Random random = new Random();
  ballonList1 = new ArrayList<ballon>();
  ballonList2 = new ArrayList<ballon>();
  Arrowslist= new ArrayList <Arrows>();
  //Array list for each level
  for (int i=0; i<15; i++) {
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

void draw (){
if(mode==STARTMENU){
  startmenu();
}
//else if(mode==RULESMENU){
//  rulesmenu();
//}
else if(mode==LEVEL1){
 levels();
 charanim();
 ballonv1();
 scoreboard();
 nextlvl();
 //if (arrowcount==20){
 //test=Arrowslist.get(0);
 //}
 if(arrowcount==20 && arrowcount>popballon && !arrowmove){
 mode=GAMEOVER;
 }

} 
else if(mode==LEVEL2){
  levels();
  charanim();
  ballonv2();
 scoreboard();
 nextlvl2();
 if(arrowcount==20 && arrowcount>popballon &&!arrowmove){
 mode=GAMEOVER;
 }
  
}
else if(mode==SCOREMENU){
  scoremenu();
}
else if (mode==SCOREMENU2){
scoremenu2();
}
else if (mode==ENDSCREEN){
endscreen();
}
else if(mode==GAMEOVER){
gameover();
}
}
