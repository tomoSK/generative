PVector loc;
PVector velocity;
  
void setup() {
  size (600,600);
  frameRate(60);
  background(250,240,255);
  stroke(160,160,160);
  loc = new PVector(0,0);
  velocity = new PVector(0,0);
}

void draw(){
  loc.add(velocity);
  if (loc.y < height) {
    fill(200,random(200,255),255,120);
    rect (loc.x,loc.y,30,30);
    
    if (loc.x < width) {     
      velocity.x = 30;
    }
    if (loc.x == width) {
      loc.x = 0;
      velocity.x = 0;
      loc.y = loc.y + 30;
    }
  }
  //loc.x = 0;
  //loc.y = 0;
  //rect (loc.x,loc.y,30,30);
  //fill(250,240,255);
  //noStroke();
  //if (loc.x < width) {     
  //    velocity.x = 30;
  //  }
  //  if (loc.x == width) {
  //    loc.x = 0;
  //    velocity.x = 0;
  //    loc.y = loc.y + 30;
  //  }
    
}
