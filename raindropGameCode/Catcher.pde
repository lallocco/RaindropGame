class Catcher {           //creates catcher class
  PVector loc;
  float diam;

  Catcher(float width) {       //initializes catcher 
    diam = width+50;
    loc = new PVector(mouseX, mouseY);
  }

  void display() {             //creates display function for catcher
    fill(139, 69, 19);
    noStroke();
    loc = new PVector(mouseX, mouseY);
    rect(loc.x, loc.y, diam, diam);
  }
}