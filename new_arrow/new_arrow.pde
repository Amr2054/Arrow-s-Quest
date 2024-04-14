import java.util.ArrayList;
ArrayList <Arrow> arrows = new ArrayList<Arrow>() ;

void setup(){
size(640,360);
for(int i=0; i<15;i++){
arrows.add(new Arrow(40,180,120,180));

}

}

void draw(){
background(255);

for (Arrow a : arrows)
{
a.update();
a.show();
a.over();


}



}

void mousePressed() {
for (Arrow a : arrows)
{

a.over();



}

 
}
