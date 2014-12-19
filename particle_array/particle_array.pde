//declare array list
ArrayList<Particle> dust= new ArrayList<Particle>();
//declare bouncy ball array
Bouncyball[] balls= new Boncyball[200];
//declare black hole
Blackhole=h;
//declare image
PImage land;
PImage tink;

void setup() {
  //color mode
  colorMode(HSB, 360,100,100,100);
  //initialize h
  h= new Blackhole();
  for(int i=0; i<balls.length; i++){
    balls[i]= new Particles(random(5,60), random(.1,10);
  }
  //load images
  land= loadImage("neverland.jpg");
  tink= loadImage("tinkerbell.png");

  size(1151, 690);
  image(land,0,0,displayWidth,displayHeight);
 
}
void draw() {
//make background
   background(land);
   //draw dust
  dust.add(new Particle(mouseX+75, mouseY+50));
  for (int i=dust.size ()-1; i>=0; i--) {
   //get information from Particle class
    Particle pix=dust.get(i);
    pix.display();
    pix.move();
    pix.update();
    //remove dust if life is larger than life span
    if(pix.isDead()){
      dust.remove(i);
    }
  }
  for(int i=0; i<balls.length; i++){
  h.consume(dust[i]);
  balls[i].display();
  balls[i].isSuckedIn(h);
balls[i]move();

  }
  //draw fairy image

  image(tink,mouseX,mouseY,100,100);

}



