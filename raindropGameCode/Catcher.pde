class Catcher {
  PVector loc;
  float diam;

  Catcher(float width) {
    diam = width+50;
    loc = new PVector(mouseX, mouseY);
  }

  void display() {
    fill(139, 69, 19);
    noStroke();
    loc = new PVector(mouseX, mouseY);
    rect(loc.x, loc.y, diam, diam);
  }
}