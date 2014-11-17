float locx,locy;
float velx,vely;
float accx,accy;
float sz;
void setup(){
 size(800,600); 
 locx=width/2;
locy=height/2;
velx=random(-1,1);
vely=random(-1,1);
accx=random(-.005,.005);
accy=random(-.005,.005);
sz=50;
noStroke();
colorMode(HSB,360,100,100,100);
  background(0);
}
void draw(){

 velx+=accx;
vely+=accy;
locx+=velx;
locy+=vely;
fill(frameCount%360, 100,100);
ellipse(locx,locy,sz,sz);

if(locx-sz/2> width){
  locx=-sz/2;
}
if(locx+sz/2<0){
  locx= width+sz/2;
}
if(locy-sz/2>height){
  locy=-sz/2;
}
if(locy+sz/2<0){
  locy=height+sz/2;
}
}
