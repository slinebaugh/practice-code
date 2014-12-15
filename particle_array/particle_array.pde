ArrayList<Particle> dust= new ArrayList<Particle>();
void setup() {
  size(800, 600);
}
void draw() {
  background(0);
  dust.add(new Particle(mouseX, mouseY));
  for (int i=dust.size ()-1; i>=0; i--) {
    Particle pix=dust.get(i);
    pix.display();
    pix.move();
    pix.update();
  }
}



