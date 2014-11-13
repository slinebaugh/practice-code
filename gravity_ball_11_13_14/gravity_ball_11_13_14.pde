int sz=20;
float x,y,velx,vely,grav;


void setup(){
  size(800,600);
x=sz/2;
y=sz/2;
velx=3;
vely=0;
grav=.1;


}
void draw(){
  background(0,255,255);
 
  ellipse(x,y,sz,sz);
  vely+=grav;
  x+=velx;
  y+=vely;
  if(y+sz/2>=height){
  y=height-sz/2;
    vely*=-.9;
    fill(255,150,255);
   
    
   
  }
  if(x+sz/2>=width||x-sz/2<=0){
    velx*=-.9;
 
      fill(255,0,0);
   
  } 
  
}

