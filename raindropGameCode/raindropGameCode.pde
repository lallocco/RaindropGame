PVector mouse;              //declare a PVector for mouse
ArrayList<Raindrop> raindrops = new ArrayList<Raindrop>(); //creates array list for raindrops/leaves
Catcher bucket;             //initializes bucket 
int score;                  //create a variable for score
float leafcolor;            //create a variable for leafcolor
boolean start = true;       //creates a boolean for start and declares its natrual state as true

void setup() {
  size(1200, 800);
  mouse = new PVector();              //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  raindrops.add(new Raindrop(new PVector(width/2, 0)));         //adds raindrops to ArrayList
  bucket = new Catcher(25);          //creates bucket
  score=0;                           //sets initial score to zero
  leafcolor = random(1, 100);        //assigns a random value to leafcolor
  textSize(30);
  textAlign(CENTER);
}

void draw() {
  if (start == true) {
    println(leafcolor);                    //prints leafcolor value at command line
    mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
    background(0, 200, 255);
    bucket.display();                      //displays the bucket on the screen
    text(score, width/2, 100);             //displays text with a value equal to score
    text("Catch the colorful, red leaves, not the boring green leaves! 20 leaves = you win!", width/2, 50); //displays instructional text
    for (int i = 0; i < raindrops.size(); i++) {
      Raindrop r = raindrops.get(i);
      r.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
      r.display(leafcolor);      //display the raindrop
      if (r.loc.y > height + r.diam/2) { //if raindrop falls below the screen, drop another from the top
        r.reset();
        leafcolor = random(1, 100);
      }
      if (r.IsInContactWith(bucket.diam)) { //if bucket touches raindrop, drop another raindrop from the top
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
    if (score > 20) {
      text("You win!", width/2, height/2); 
      start = false;       //creates game-over scenario 
    }
  }
}