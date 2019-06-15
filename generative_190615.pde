  float _angnoise, _radiusnoise;
  float _xnoise, _ynoise;
  float _radius;
  float _angle=-PI/2;
  float _strokeCol = 250;
  float _strokeChange = -2;

void setup() {
  size(800,800);
  frameRate(24);
  background (250);
  smooth();
  
  _angnoise = random(10);
  _radiusnoise = random(10);
  _xnoise = random(10);
  _ynoise = random(10);
}

void draw(){
  _radiusnoise += 0.01;
  _radius = (noise(_radiusnoise) * 450)+1;
  
  _angnoise += 0.01;
  _angle += (noise(_angnoise)*6)-3;
  if (_angle > 360) {_angle -= 360;}
  if (_angle < 0) {_angle += 360;}
  
  _xnoise += 0.01;
  _ynoise += 0.01;
  float centerx = width/2 + (noise(_xnoise)*100)-50;
  float centery = height/2 + (noise(_ynoise)*100)-50;
  
  float rad = radians(_angle);
  float x1 = centerx + (_radius * cos(rad));
  float y1 = centery + (_radius * sin(rad));

  float opprad = rad + PI;
  float x2 = centerx + (_radius * cos(opprad));
  float y2 = centery + (_radius * sin(opprad));
  
  _strokeCol += _strokeChange;
  if (_strokeCol > 200) {_strokeChange = -1;}
  if (_strokeCol < 0) {_strokeChange = 1;}
  stroke(_strokeCol,_strokeCol+55,255-_strokeCol,80);
  strokeWeight(0.9);
  line(x1,y1,x2,y2);
}
