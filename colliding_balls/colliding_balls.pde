int count=150;
PVector [] loc=new PVector [count];
PVector [] vel=new PVector [count];
PVector [] acc=new PVector [count];
float[] sz= new float[count];


void setup() {
  size(800, 600);
  noStroke();
 // colorMode(HSB, 360,100,100,100);
  for (int i=0; i<count; i++) {
    sz[i]=random(3, 10);
    loc[i] = new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i])); 
    vel[i]= PVector.random2D();
    acc[i]= new PVector(0, 0);
  }
}
void draw() {
fill(0,15);
rect(0,0,width,height);
noStroke();

  for (int i=0; i<count; i++) {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    for (int j=0; j<count; j++) {
      if (i!=j) {
        if (loc[i].dist(loc[j])<sz[i]/2+sz[j]/2) {
          print("COLLISION DETECTED");
          if (loc[i].x<loc[j].x) {
            vel[i].x=-abs(vel[i].x);
            vel[j].x=abs(vel[j].x);
            fill(random(225),0,0);
          } else {
            vel[i].x=abs(vel[i].x);
            vel[j].x=-abs(vel[j].x);
            fill(0,random(255),0);
          }
          if (loc[i].y < loc[j].y) {
            vel[i].y=-abs(vel[i].y);
            vel[j].y=abs(vel[j].y);
            fill(0,0,random(255));
          } else {
            vel[i].y=abs(vel[i].y);
            vel[j].y=-abs(vel[j].y);
            fill(random(255),random(255),random(255));
          }
        }
      }
    }
   // fill(255);
    fill(237,224,105);
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);

    if (loc[i].x+sz[i]/2>width||loc[i].x-sz[i]/2<0) {
      vel[i].x*=-1;
    }
    if (loc[i].y+sz[i]/2>height||loc[i].y-sz[i]/2<0) {
      vel[i].y*=-1;
    }
  }
}



void mouseReleased() {
  loc[0].set(mouseX, mouseY);
}

