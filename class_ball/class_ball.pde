ball b;
ball c;
void setup() {
 for(int i=0; i<width; i++){
   
  size(800, 600);
  colorMode(HSB, 360, 100, 100, 100);
  b = new ball();
  b.display();
  b.move();
  b.bounce();
  c = new ball();
   c.display();
  c.move();
  c.bounce();
 }
}

void draw() {
  background(0);
  b.display();
  b.move();
  b.bounce();
  
   c.display();
  c.move();
  c.bounce();

}

