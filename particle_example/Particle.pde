class Particle {
  boolean alive;

  PVector loc, vel, acc;
  float sz;
  float life;
  float lifespan;
  float decay;
  float opacity;

  Particle(float x, float y) {
    loc= new PVector(x,y);
    vel= new PVector(random(-3, 3), random(-4, -2));
    acc= new PVector(0, .1);
    sz= 10;
    life=random(100);
    lifespan=life;
    opacity=255;
    decay=1;
  }
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void update() {
    life-=decay;
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

