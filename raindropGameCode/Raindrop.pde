class Raindrop {
  PVector loc, vel, grav;
  int diam;
  color c;
 

  
 
  Raindrop(PVector pos) { 
    diam = 75;
    loc = pos;
    vel = new PVector(0, .5);
    grav = new PVector(0, .5);
  }
  
  void display(float leafcolor){
    if (leafcolor < 50) { 
      c = color(0, 255, 0); 
    }
    else if (leafcolor >= 50) {
      c = color(255, 0, 0);
    }
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
    c = color(0, 255, 0);
  }
  
  boolean IsInContactWith(PVector mouse, float bucketdiam){
    if (loc.dist(mouse) < diam/2 + bucketdiam/2) {
      return true;
    } else {
      return false;
    }
  }
}