ArrayList<Particle> particle= new ArrayList<Particle>();

void setup(){
  size(800,600);
}

void draw(){
  background (0);
 
  particle.add(new Particle(mouseX,mouseY));
  for(int i=particle.size()-1;i>=0;i--){
   Particle p=particle.get(i);
  p.display();
 p.move();
p.update();
if(p.isDead()){

  particle.remove(i);

 }
}
}
