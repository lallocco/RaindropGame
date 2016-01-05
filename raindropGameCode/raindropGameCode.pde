PVector mouse;   //declare a PVector for mouse
int count = 100;
ArrayList<Raindrop> raindrops = new ArrayList<Raindrop>();
Catcher bucket;
int score; //create a variable for score
float leafcolor; //create a variable for leafcolor

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  mouse = new PVector(); //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  raindrops.add(new Raindrop(new PVector(width/2, 0)));
  bucket = new Catcher(25);
  score=0;
  leafcolor = random(1, 100); //assigns a random value to leafcolor
  textSize(40);
  textAlign(CENTER);
}

void draw() {
  println(leafcolor); //prints leafcolor value at command line
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  background(0, 200, 255);
  bucket.display(); //displays the bucket on the screen
  text(score, width/2, 100); //displays text with a value equal to score
  text("Catch the colorful, red leaves, not the boring green leaves!", width/2, 50); //displays instructional text
  for (int i = 0; i < raindrops.size(); i++) {
    Raindrop r = raindrops.get(i);
    r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    r.display(leafcolor);      //display the raindrop
    if (r.loc.y > height + r.diam/2) { //if raindrop falls below the screen, drop another from the top
      r.reset();
      leafcolor = random(1, 100);
    }
    if (r.IsInContactWith(mouse, bucket.diam)) { //if bucket touches raindrop, drop another raindrop from the top
      r.reset();
      if (leafcolor >= 50) {
        score=score+1;
      }
      if (leafcolor < 50) {
        score=score-1;
      }
      leafcolor = random(1, 100);
    }
  }
}