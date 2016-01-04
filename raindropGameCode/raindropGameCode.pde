PVector mouse;   //declare a P  
int count = 100;
ArrayList<Raindrop> raindrops = new ArrayList<Raindrop>();
ArrayList<Catcher> bucket = new ArrayList<Catcher>();

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  mouse = new PVector(); //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  raindrops.add(new Raindrop(new PVector(width/2, 0)));
  bucket.add(new Catcher(200));
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  for (int i = 0; i < raindrops.size(); i++) {
    Raindrop r = raindrops.get(i);
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display();      //display the raindrop
    if (r.loc.y > height + r.diam/2) {
      r.reset();
    }
  }
}