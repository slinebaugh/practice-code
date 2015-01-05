//declare array list
ArrayList<Particle> dust= new ArrayList<Particle>();
//declare float
float decay=1;


//declare image land
PImage land;
//declare image tink
PImage tink;

void setup() {


  //load image neverland
  land= loadImage("neverland.jpg");
  //load image tinkerbell
  tink= loadImage("tinkerbell.png");
  //display size
  size(1151, 690);
}
void draw() {
  //make background
  background(land);
  //draw dust
  dust.add(new Particle(mouseX+75, mouseY+50));
  for (int i=dust.size ()-1; i>=0; i--) {
    //get information from Particle class
    Particle pix=dust.get(i);
    //display dust
    pix.display();
    //move dust
    pix.move();
    //update dust
    pix.update();
    //remove dust if life is larger than life span
    if (pix.isDead()) {
      dust.remove(i);
    }
  }

  //draw fairy image

  image(tink, mouseX, mouseY, 100, 100);
}

