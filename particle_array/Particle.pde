class Particle {
  boolean alive;
  PVector loc, vel, acc;
  float sz;
  float life;
  float decay;
  float lifespan;
  float opacity;

  Particle(float x, float y) {
    sz=random(2,5);
    life=random(150);
    lifespan=life;
    opacity=255;
    decay=1;
//    float(random(.5,4));
    loc= new PVector(x, y);
    vel= new PVector(random(-3, 3), random(-3, -1));
    acc= new PVector(0, .1);
  }
  void display() {
    noStroke();
   
    fill(242,242,66, opacity);
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void update() {
    life -=decay;
    opacity=map(life, 0, lifespan, 0, 255);
  }
  boolean isDead() {
    if (life<0) {
      return true;
    } else {
      return false;
    }
  }
}


