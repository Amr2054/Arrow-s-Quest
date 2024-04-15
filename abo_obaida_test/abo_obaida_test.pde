import java.util.Random;
PImage sky, skymenu,score, img1, img2 , arr, archer,lvl1comp;
//PImage[] layer=new PImage[22];
final int STARTMENU=0;
final int RULESMENU=1;
final int LEVEL1=2;
final int LEVEL2=3;
final int SCOREMENU=4;
ArrayList<ballon> ballonList1;
ArrayList<ballon> ballonList2;
ArrayList <Arrows> Arrowslist;
int layerIndex= 0;
int layerDelay=2;
int c1 =1000, mode;
int count=0;

void setup() {
  size(1920, 1080);
  mode=STARTMENU;
  imageMode(CENTER);
  img1 =loadImage("test2.png");
  img2 =loadImage("test3.png");
  arr = loadImage("ar.png");
  skymenu=loadImage("bg6.png");
  score =loadImage("bg3.png");
  sky=loadImage("bg1.png");
  archer=loadImage("archer.png");
  lvl1comp = loadImage("lvl1comp.png");
  //for (int i = 0; i<layer.length; i++) {
  //  layer[i] = loadImage("shoot_stand_"+i+".png");
  //  layer[i].resize(100, 0);
  //}
  frameRate(100);
  Random random = new Random();
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
//else if(mode==RULESMENU){
//  rulesmenu();
//}
else if(mode==LEVEL1){
  levels();
  charanim();
  ballonv1();
 scoreboard();
 newlevel();

    

}
else if(mode==LEVEL2){
  level2();
}
else if(mode==SCOREMENU){
  scoremenu();
}
else { println("Mode error mode = "+mode);

}
println(Arrowslist.size());
println(count);

}
