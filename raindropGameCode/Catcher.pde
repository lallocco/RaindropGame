class Catcher {
  PVector loc;
  float diam;

  Catcher(float width) {
    diam = width;
    loc = new PVector(mouseX, mouseY);
  }

  void display() {
    fill(34, 67, 45);
    noStroke();
    loc = new PVector(mouseX, mouseY);
    ellipse(loc.x, loc.y, diam, diam);
  }
}