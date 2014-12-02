int count= 200;
Ball [] b= new Ball [count];


void setup() {
    size(800, 600);
    colorMode(HSB, 360, 100, 100, 100);
  for (int i=0; i<count; i++) {

    
    b[i] = new Ball();
  }
}

void draw() {
  background(0);
  for (int i=0; i<count; i++) {
  
    b[i].display();
    b[i].move();
    b[i].wrap();
  }
}

