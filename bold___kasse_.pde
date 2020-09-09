int ballsize = 8;    
float xpos, ypos;    

float xspeed = 5;  
float yspeed = 5;  

int xdirection = -1;  
int ydirection = -1;  

int length = 300;
int shrink = -1;


void setup() 
{
  size(400, 400);

  
  xpos = length/2;
  ypos = length/2;
    ellipseMode(RADIUS);

}
void collision() 
{
  
}
void draw() 
{
  background(102);
  rect(200,200,length,length -shrink);
  rectMode(CENTER);
  fill(500,500,500,500);
    noStroke();
  frameRate(30);


  

  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  

  if (xpos > length-ballsize || xpos < ballsize) {
    xdirection *= -1;
  }
  if (ypos > length-ballsize || ypos < ballsize) {
    ydirection *= -1;
  }




  ellipse(xpos, ypos, ballsize, ballsize);
 fill(200,200,200,200);
  
}
