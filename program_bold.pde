int r=30;
int m=20;
int n=50;
int L=50;
float x,y;
float speedx=1;
float speedy=1;
float sizen=5;
float sizeL=5;
float xdir=1;
float ydir=1;
 
void setup() {
  size(500,750);

}
 
void draw() {
  clear();
ellipse(x, y, n,L++ );
x=x+speedx;
y=y+speedy;
x=x+sizen;
y=y+sizeL;
}
