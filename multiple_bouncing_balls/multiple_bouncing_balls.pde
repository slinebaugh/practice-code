int[]x={ 25,100,500,650,400};
int[]y={100,75,80,500,300};
float[] sz={20,30,40,50,60};
int [] xspeed={ 1,1,-1,1,2};
int[] yspeed={-2,-1,1,-1,-1};

void setup(){
  size(800,800);
}
void draw(){
  background(255,150, 200);
 for(int i=0; i < x.length; i++){
   fill(255,0,255);
  ellipse(x[i],y[i],sz[i],sz[i]);
  x[i]+=xspeed[i];
  y[i]+= yspeed[i];
  if(x[i] +sz[i]/2 >width || x[i] -sz[i]/2 < 0){
    xspeed[i]*= -1;
  }
  if(y[i]+ sz[i]/2 > height || y[i] -sz[i]/2< 0){
    yspeed[i]*= -1;
  }
 } 
}
