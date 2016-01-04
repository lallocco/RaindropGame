class Raindrop {
  PVector loc, vel, grav;
  int diam;
  color c;

  
 
  Raindrop(PVector pos) {
    diam = 75;
    loc = pos;
    vel = new PVector(0, .5);
    grav = new PVector(0, .5);
    c = color(255, 255, 255); 
  }
  
  void display(){
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  
  void fall(){
    loc.add(vel);
    vel.add(grav);
  }
  
  void reset(){
    diam = 50;
    loc.y = 0;
    loc.x = random(0, width);
    vel = new PVector(0, .5);
    vel.mult(10);
    c = color(255, 255, 255);
  }
  
  boolean IsInContactWith(PVector mouse, float bucketdiam){
    if (loc.dist(mouse) < diam/2 + bucketdiam/2) {
      return true;
    } else {
      return false;
    }
  }
}