int sz=20;
float x,y,velx,vely,grav;


void setup(){
  size(800,600);
x=width/2;
y=height*.25;
velx=0;
vely=0;
grav=1;
frameRate(5);

}
void draw(){
  background(0,10);
  fill(random(255),0,random(255));
  ellipse(x,y,sz,sz);
  vely+=grav;
  x+=velx;
  y+=vely;
  if(y+sz/2>height){
    vely=-abs(vely);
  }
  
}

