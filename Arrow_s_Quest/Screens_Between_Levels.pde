 void tolvl1Comp() {
 if (popBalloon==15) {
   lvlsc1 = 0;
   lvlsc1 = (remainingArrows+1)*popBalloon;
   resetLevels();  
   mode = LVL1COMP; 
 }
}
 
 void tolvl2Comp(){
 if (popBalloon==15) {
   lvlsc2=0;
   lvlsc2 =(remainingArrows+1)*popBalloon;
   resetLevels();  
   mode=LVL2COMP; 
 }
}
