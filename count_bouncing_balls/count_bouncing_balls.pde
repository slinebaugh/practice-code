int count=20;
int[]x= new int [count];
 // 25, 100, 500, 650, 200
int[]y= new int [count];
  //75, 50, 100, 200, 500

int[]sz= new int [count];
  //60, 20, 40, 30, 50

int[]xspeed= new int [count];
  //1, 1, -1, 1, -2

int[]yspeed= new int [count];
 // -2, -1, 1, -1, -1

int[] growth= new int [count];
//-3,1,-1,2,3

color[] colors= new int [count];
//255,51,200,0,150

void setup() {
  size(800, 600);
 for(int i=0;i< count; i++){
   x[i]= int (random(sz[i], width-sz[i]));
   y[i]= int(random(sz[i], height-sz[i]));
  xspeed[i]=int (random(-3,3));
  if( xspeed[i]==0){
    xspeed[i]=-1;
  }
  yspeed[i]=int (random(-3,3));
  if(yspeed[i]==0){
    yspeed[i]=-1;
  }
  sz[i]= int(random(20,100));
 }
}
void draw() {
  background(0);
  for (int i=0; i <  x.length; i++) {
 
    stroke(255);
    ellipse(x[i], y[i], sz[i], sz[i]);
    x[i]+= xspeed[i];
    y[i]+=yspeed[i];
    sz[i]+= growth[i];
    if (x[i] + sz[i]/2 > width || x[i]- sz[i]/2 <0) {
      xspeed[i]*=-1;

      //growth[i]*=-1;
    }
    if (y[i]+ sz[i]/2 > height|| y[i] -sz[i]/2< 0) {
      yspeed[i]*=-1;

      //growth[i]*=-1;
    }
  
  if(sz[i] >100 || sz[i] <= 15){
    growth[i]*=-1;

  }
  if(sz[i] >150 || sz[i]<= 20){
    growth[i]*=-1;

  }
}
}

