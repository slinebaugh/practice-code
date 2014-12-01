int count=200;
class ball{
for(int i=
  PVector[] loc[count]; 
  PVector[] vel[count]; 
  PVector[] acc[count];
  float[] sz[count];
  float[] hue[count];
ball(){
  //initialize variable
  loc[i] = new PVector(width/2, height/2);
  vel[i] = PVector.random2D();
  acc[i] = new PVector(0, 0);
  sz[i] = random(10, 100);
  hue[i] = random(360);
}
void bounce(){
   if (loc[i].x + sz[i]/2 > width || loc[i].x - s[i]/2 < 0) {
    vel.x *= -1;
  }
  if (loc[i].y + sz[i]/2 > height || loc[i].y - sz[i]/2 < 0) {
    vel.y *= -1;
  }
}
void move(){
   vel[i].add(acc[i]);
  loc[i].add(vel[i]);
}
void display(){
 fill(frameCount%360,100,100,100);
  ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
}

}

