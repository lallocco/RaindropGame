PVector mouse;   //declare a P  
Raindrop[] r = new Raindrop[50];
int count = 50;
Catcher bucket;
ArrayList<Raindrop> raindrops = new ArrayList<Raindrop>();

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(800, 800);
  mouse = new PVector(); //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  raindrops.add(new Raindrop(random(width), 0));
  bucket = new Catcher(mouseX, mouseY);
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  bucket.display();
  for (int i = 0; i < count; i++) {
    r[i].fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r[i].display();      //display the raindrop
    if (r[i].pos.y > height + r[i].diam/2) {
      r[i].reset();
    }
    if (r[i].IsInContactWith(bucket)) {
      r[i].reset();
    }
  }
}