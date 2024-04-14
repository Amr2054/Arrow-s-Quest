import java.util.Random;
PImage sky, scroll, skymenu, skyrules,score, img1, img2 , arr;
PImage[] layer=new PImage[22];
final int STARTMENU=0;
final int RULESMENU=1;
final int LEVEL1=2;
final int LEVEL2=3;
final int SCOREMENU=4;
ArrayList<ballon> ballonList1;
ArrayList<ballon> ballonList2;
ArrayList<PVector> arrows = new ArrayList<PVector>();
int layerIndex= 0;
int layerDelay=2;
int c1 =1000, mode;

void setup() {
  size(1920, 1080);
  mode=STARTMENU;
  imageMode(CENTER);
  for (int i = 0; i<layer.length; i++) {
    layer[i] = loadImage("shoot_stand_"+i+".png");
    layer[i].resize(100, 0);
  }
  frameRate(60);
  img1 =loadImage("test2.png");
  img2 =loadImage("test3.png");
  arr = loadImage("ar.png");
  Random random = new Random();
  ballonList1 = new ArrayList<ballon>();
  ballonList2 = new ArrayList<ballon>();
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
    rand[i] = c1 + x * 60;
  }
  for (int i=0; i<12; i++) {
    ballonList2.add(new redBallon(rand[i], random(750, 1000)));
  }
  for (int i=12; i<15; i++) {
    ballonList2.add(new yellowBallon(rand[i], random(750, 1000)));
  }
}

void draw (){

if(mode==STARTMENU){
  startmenu();
}
else if(mode==RULESMENU){
  rulesmenu();
}
else if(mode==LEVEL1){
  levels();
  charanim();
  arrow();
  ballonv1();
 scoreboard();

    

}
else if(mode==LEVEL2){
  level2();
}
else if(mode==SCOREMENU){
  scoremenu();
}
else { println("Mode error mode = "+mode);

}



}
