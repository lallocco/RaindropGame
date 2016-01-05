class Raindrop {                  //creates raindrop class
  PVector loc, vel, grav;
  int diam;
  color c;
 

  
 
  Raindrop(PVector pos) {         //initializes raindrop class
    diam = 75;
    loc = pos;
    vel = new PVector(0, .5);
    grav = new PVector(0, .5);
  }
  
  void display(float leafcolor){    //displays raindrop class
    if (leafcolor < 50) {           //if leafcolor is less than 50, the leaf is green
      c = color(0, 255, 0); 
    }
    else if (leafcolor >= 50) {     //if leafcolor is 50 or higher, the leaf is red
      c = color(255, 0, 0);
    }
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam/2);    //draws leaf
    
  }
  
  void fall(){          //creates fall function for leaf
    loc.add(vel);
    vel.add(grav);
  }
  
  void reset(){         //creates reset function for leaf
    diam = 50;
    loc.y = 0;
    loc.x = random(0, width);
    vel = new PVector(0, .5);
    vel.mult(10);
    c = color(0, 255, 0);
  }
  
  boolean IsInContactWith(float bucketdiam){       //creates boolean that allows leaf to recognize contact with bucket
    if (loc.dist(mouse) < diam/2 + bucket.diam/2) {
      return true;
    } else {
      return false;
    }
  }
}