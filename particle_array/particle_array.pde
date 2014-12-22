//declare array list
ArrayList<Particle> dust= new ArrayList<Particle>();
float decay=1;


//declare image
PImage land;
PImage tink;

void setup() {
 

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

  //draw fairy image

  image(tink,mouseX,mouseY,100,100);

}
void mousePressed(){

}


