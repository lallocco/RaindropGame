class Catcher {
  PVector pos;
  int diam;

  Catcher(float x, float y) {
    diam = 50;
    pos = new PVector(mouseX, mouseY);
  }

  void display() {
    fill(34, 67, 45);
    noStroke();
    pos = new PVector(mouseX, mouseY);
    ellipse(pos.x, pos.y, diam, diam);
  }
}