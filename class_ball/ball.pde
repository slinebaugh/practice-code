
class Ball{

 
  PVector loc; 
  PVector vel; 
  PVector acc;
  float sz;
  float hue;
Ball(){
  //initialize variable
  loc = new PVector(width/2, height/2);
  vel = PVector.random2D();
  acc = new PVector(0, 0);
  sz = random(10, 100);
  hue = random(360);
}
void bounce(){
   if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
    vel.x *= -1;
  }
  if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
    vel.y *= -1;
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


}
