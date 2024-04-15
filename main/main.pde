import java.util.Random;
PImage img1, img2;
ArrayList<ballon> ballonList1;
int c1 =100, level=2;

void setup() {
  size (1000, 660);
  img1 =loadImage("test2.png");
  img2 =loadImage("test3.png");
  Random random = new Random();
  ballonList1 = new ArrayList<ballon>();

  if (level ==1) {

    for (int i=0; i<15; i++) {
      ballonList1.add(new redBallon(c1));
      c1+=60;
    }
  } else {
    
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
      ballonList1.add(new redBallon(rand[i], random(750, 1000)));
  
    }
    for (int i=12; i<15; i++) {
      ballonList1.add(new yellowBallon(rand[i], random(750, 1000)));
   
    }
  }
}


void draw() {
  background(255);
  for (ballon a : ballonList1) {
    a.update();
    a.show();
  }
}
