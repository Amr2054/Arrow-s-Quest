void mouseReleased(){
if(mode==STARTMENU){
  startmenuclicks();
}else if(mode==RULESMENU){
  rulesmenuclicks();
}else if(mode==LEVEL1){
  level1clicks();
}else if(mode==LEVEL2){
  level2clicks();
}else if(mode==SCOREMENU){
  scoremenuclicks();
}
}
