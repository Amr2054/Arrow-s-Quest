ArrayList <Arrows> Arrowslist;

void setup() {
size(1920,1080);
Arrowslist= new ArrayList <Arrows>();
}

void draw() {
background(255);
for ( Arrows anArrow : Arrowslist) {

  anArrow.render();
  anArrow.move();

}

 println(Arrowslist.size());
 
}

void mousePressed() {
 if (Arrowslist.size()<15) {
Arrowslist.add( new Arrows(40,120,mouseY,mouseY) );
 }
}
