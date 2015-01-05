//declare Particle class
class Particle {
  //declare alive
  boolean alive;
  //declare loc,acc,vel
  PVector loc, vel, acc;
  //declare float integers
  float sz;
  float life;
  float decay;
  float lifespan;
  float opacity;
  //constructor
  Particle(float x, float y) {
    sz=random(2, 5);
    life=random(150);
    lifespan=life;
    opacity=255;
    decay=1;

    loc= new PVector(x, y);
    vel= new PVector(random(-3, 3), random(-3, -1));
    acc= new PVector(0, .1);
  }
  void display() {
    noStroke();
    //fill pixie dust
    fill(242, 242, 66, opacity);
    //draw ellipses for pixie dust
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    //move pixie dust
    vel.add(acc);
    loc.add(vel);
  }
  void update() {
    //decreasing life
    life -=decay;
    opacity=map(life, 0, lifespan, 0, 255);
  }
  //what happens if particle is dead
  boolean isDead() {
    if (life<0) {
      return true;
    } else {
      return false;
    }
  }
}

