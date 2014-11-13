float running=1;
int sz=50;
void setup(){
  size(500,500);
  textAlign(CENTER);
background(0);
}
void draw(){
//  background(0);
  if(running==1){
   fill(random(255),0,random(255));
  ellipse(mouseX, mouseY, sz,sz);
  }else{
  fill(0,random(255),random(255));
  textSize(75);
  text("GAME OVER", width/2, height/2);
  }
}
void mousePressed(){
background(0);
  if(mousePressed){
  running*=-1;
}
}

