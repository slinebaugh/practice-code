
class Ball{

 
  PVector loc; 
  PVector vel; 
  PVector acc;
  float sz;
  float hue;
Ball(){
  //initialize variable
  loc = new PVector(width/2, random(height));
  vel = new PVector(random(-3,3),random(-1,0));
  acc = new PVector(.001, .01);
  sz = random(10);
  hue = random(360);
}
//void bounce(){
//   if (mouseX + sz/2 > width || mouseX - sz/2 < 0) {
//    vel.x *= -1;
//  }
//  if (mouseY + sz/2 > height || mouseY - sz/2 < 0) {
//    vel.y *= -1;
//  }
void wraparound(){
  if(loc.y-sz/2>height){
    loc.set(mouseX,mouseY);
  }
}
void move(){
   vel.add(acc);
  loc.add(vel);
}
void display(){
 fill(frameCount%360,100,100,100);
  ellipse(loc.x, loc.y, sz, sz);
}
void wrap(){
  if(loc.y-sz/2>height){
    loc.set(mouseX,mouseY);
  }
}
}

