class Blackhole{
  PVector loc;
  float sz;
  Blackhole(){
    loc= new PVector(width/4, height/4);
    sz= 10;
  }
  void display(){
    noStroke():
    fill(255,0,255);
    ellipse(loc.x,loc.y,sz,sz);
  }
  void consume( Bouncball food){
    if(loc.dist(food.loc)<sz/2+food.sz/2){
      print("I AM EATING");
      food.teleport();
      sz+=food.sz/100;
    }
  }
}
      
