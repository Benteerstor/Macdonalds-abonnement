float Sx = 500;
float Sy = 500;
float Shrink = 1;
float boldx = 400;
float boldy = 300;
float SpeedX  = 5;
float SpeedY = 5;
void setup(){
  size(800,800);
 rectMode(CENTER);
}
void draw(){
  clear();
  noFill();
  stroke(200);
  strokeWeight(10);
rect(400,400, Sx, Sy);
ellipse(boldx,boldy,10,10);
boldx = boldx + SpeedX;
boldy = boldy + SpeedY;
Sx = Sx - Shrink;
Sy = Sy - Shrink;
if(boldx >= (width/2 + Sx/2)){
  SpeedX = -abs(SpeedX);
} 
else if(boldx >= (height/2 + Sx/2)){
  SpeedX = abs(SpeedX);
} 
if(boldy >= (width/2 + Sy/2)){
  SpeedY = -abs(SpeedY);
}
else if(boldy >= (height/2 + Sy/2)){
  SpeedY = abs(SpeedY);
}
}
