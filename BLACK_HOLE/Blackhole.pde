class BlackHole {
  PVector loc;
  float sz;

  BlackHole() {
    loc = new PVector(random(width), random(height));
    sz = 5;
  }

  void display() {
   noStroke();
    fill(255,0,255);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void consumes(BouncyBall food) {
    if (loc.dist(food.loc) < sz/2 + food.sz/2) {
      print("I AM EATING!!!! ");
      food.teleport();
      sz+=food.sz/100;
      
    }
  }
}
