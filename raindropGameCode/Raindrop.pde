class Raindrop {
  PVector pos, vel, grav;
  int diam;
  color c;

  
 
  Raindrop(float x, int y) {
    diam = 50;
    pos = new PVector(random(diam, width-diam), 0);
    vel = new PVector(0, .5);
    grav = new PVector(0, .5);
    c = color(255, 255, 255); 
  }
  
  void display(){
    fill(c);
    noStroke();
    ellipse(pos.x, pos.y, diam, diam);
  }
  
  void fall(){
    pos.add(vel);
    vel.add(grav);
  }
  
  void reset(){
    diam = 50;
    pos = new PVector(random(diam, width-diam), 0);
    vel = new PVector(0, .5);
    vel.mult(10);
    c = color(255, 255, 255);
  }
  
  boolean IsInContactWith(PVector point){
    if (point.dist(pos) < diam/2){
      return true;
    }
      else{
      return false;
    }
  }
}