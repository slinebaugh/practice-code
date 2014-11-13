float xspeed,x,y,sz,yspeed;
void setup(){
  size(600,600);
}
void draw(){
  sz=50;

 yspeed=1;
 xspeed=1;
  background(0);
  if(mousePressed){
    background(255,0,0);
    fill(100,0,255);
    ellipse(width/2, height/2, x,y);
    x-=xspeed;
    y-=yspeed;
  }else{
    background(0,0,255);
    fill(255,100,150);
    ellipse(width/2,height/2, x,y);
    x+=xspeed;
    y+=yspeed;
  }
}
