PVector loc;
PVector vel;
PVector acc;
float sz;
void setup(){
 size(800,600); 
loc= new PVector(width/2,height/2);
vel= new PVector(0,0);
//acc= new PVector (random(-.1,.1), random(-.1,.1));
sz=50;
noStroke();
colorMode(HSB,360,100,100,100);
  background(0);
}
void draw(){
acc= new PVector (random(-.1,.1), random(-.1,.1));
 vel.add(acc);

loc.add(vel);

fill(frameCount%360, 100,100);
ellipse(loc.x,loc.y,sz,sz);

if(loc.x-sz/2> width){
  loc.x=-sz/2;
}
if(loc.y+sz/2<0){
  loc.y= width+sz/2;
}
if(loc.y-sz/2>height){
  loc.y=-sz/2;
}
if(loc.y+sz/2<0){
  loc.y=height+sz/2;
}
}
