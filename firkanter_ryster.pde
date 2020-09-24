float Size = random(30, 80);
float Kasse = random(50, 60);

void setup(){
size(600, 600);
rectMode(CENTER);
}
void draw(){
  clear();
  for(int KasseX = 49; KasseX<=549; KasseX+=55){
  for(int KasseY = 49; KasseY<=549; KasseY+=55){
  fill(Size+(KasseX + KasseY) / 20, Size, 120);
  rect(KasseX, KasseY, Kasse , Kasse);
  fill(120,120,120);

      }
    }
  }
