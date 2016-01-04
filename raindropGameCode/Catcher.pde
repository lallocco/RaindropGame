class Catcher {
  PVector loc;
  float diam;

  Catcher(float width) {
    diam = width;
    loc = new PVector(mouseX, mouseY);
  }

  void display() {
    fill(139, 69, 19);
    noStroke();
    loc = new PVector(mouseX, mouseY);
    rect(loc.x, loc.y, diam+10, diam);
  }
}