PImage img1,img2;
import java.util.Collections;
ArrayList<ballon> ballonList1;
//ArrayList<ballon2> ballonList2;

float v1,v2;
float c1 =100,level=2;



void setup(){
 size (1000,750);
 img1 =loadImage("ballon.png");
 img2 =loadImage("yellow1.jpg");
 ballonList1 = new ArrayList<ballon>();
 
 if(level ==1){
   
    for(int i=0;i<15;i++){
 ballonList1.add(new ballon(img1,c1));
 c1+=60;
 }
 }
 
   else{ArrayList<ballon> redBalloons = new ArrayList<ballon>();
    ArrayList<ballon> yellowBalloons = new ArrayList<ballon>();

    for (int i = 0; i < 12; i++) {
      redBalloons.add(new ballon(img1, c1, random(750, 1000)));
      c1 += 60;
    }
    for (int i = 0; i < 3; i++) {
      yellowBalloons.add(new ballon(img2, c1, random(750, 1000)));
      c1 += 60;
    }

    // Shuffle the order of red and yellow balloons separately
    Collections.shuffle(redBalloons);
    Collections.shuffle(yellowBalloons);

    // Combine red and yellow balloons into the ballonList1
    int redIndex = 0;
    int yellowIndex = 0;
    for (int i = 0; i < 15; i++) {
      if (i % 4 == 0 && yellowIndex < 3) {
        ballonList1.add(yellowBalloons.get(yellowIndex));
        yellowIndex++;
      } else {
        ballonList1.add(redBalloons.get(redIndex));
        redIndex++;
      }
    }
  }
}
 //   for(int i=0;i<12;i++){
 //ballonList1.add(new ballon(img1,c1,random(750,1000)));
 //c1+=60;
 //  }
 //  System.out.println(c1);
 //  for(int i=0;i<3;i++){
 //ballonList1.add(new ballon(img2,c1,random(750,1000)));
 //c1+=60;
 //  }
 // //  Collections.shuffle(ballonList1);
 //  }



void draw(){
  background(255);
  for(ballon a : ballonList1){
    a.update();
    a.show();

  }
  
}

void mousePressed(){
  if(ballonList1.size()>0){
  ballonList1.remove(0);
}
}
