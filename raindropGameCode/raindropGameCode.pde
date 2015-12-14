PVector mouse;   //declare a P
Raindrop r;      //declare a new Raindrop called r

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(800, 800);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  r = new Raindrop(random(width), 0);   //Initialize r. The parameters used are the initial x and y positions
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
  r.display();      //display the raindrop
  if (r.IsInContactWith(mouse)) {
    r.reset();
  }
  if (r.pos.y > height + r.diam/2) {
    r.reset();
  }
}