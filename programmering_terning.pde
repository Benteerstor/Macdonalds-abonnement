int[] numre = new int [31];  //indeholder vores terningekast
int c = 0;               //holder øje med hvilke tal vi nået til

int en = 0;                  //tæller alle vores værdier fra 1-6
int to = 0;                  
int tre = 0;                
int fire = 0;                 
int fem = 0;                 
int seks = 0;                 

void setup() {
  size(800, 800);
  clear();
  textSize(20);
  
  text("TRYK på 'i' FOR AT KASTE", 50, 50);          //Setup text.
  text("Fordeling af terningekast", 70, 750);
  for(int b=1; b<=6; b++)text(b, 20+50*b, 700);
  textSize(14);
  for(int b = 0; b<300; b+=50)text("0 stk",60+b,660);
  
}

void draw() {
}

void keyP() {
  clear();
  textSize(20);
  text("TRYK på 'i' FOR AT KASTE / OG 'l' FOR AT SLETTE", 50, 50);

  if ((key=='i' || key == 'i') && c < 30) {
    c++;                               //tallene stiger i værdi ved at klikke "i"
    int kast = TerningeKast(1, 7);        
    text("DIT KAST BLEV:" + kast, 50, 75);
  }

  if ((key == 'l' || key == 'l') && c>0) {
    fjernSidsteKast();                       //tallene ryger ned i værdi ved at klikke "l"
  }
  tegnFordeling();                          
  udskrivKast();                           
  if(c==0)text("DIT KAST BLEV: ", 50, 75);
  if(c==30)text("DIT KAST BLEV:"+numbers[c], 50, 75);
}

int terningk(int min, int max){        
  int nyKast = int(random(min,max));         //Laver terningekast tal.
  numre[c] = nyKast;                 
  
  if(nyKast==1)en++;                       //tjekker nye kast
  if(nyKast==2)to++;                       
  if(nyKast==3)tre++;                     
  if(nyKast==4)fire++;                      
  if(nyKast==5)fem++;                      
  if(nyKast==6)seks++;                    
  return nyKast;
}  

void udskriv(){
  for(int b=1;b<=c;b++){                      //laver selve talrækken
  text("Kast "+b+": "+numre[b],600,50+20*b);      //viser kastet
  }
}

void fjern(){
  if(numre[c]==1)en--;                    //fjerning af værdier(en ad gangen)'
  if(numre[c]==2)to--;                    
  if(numre[c]==3)tre--;                  
  if(numre[c]==4)fire--;                   
  if(numre[c]==5)fem--;                   
  if(numre[c]==6)seks--;                   
  
  c--;                            
  text("DIT KAST BLEV:" + numre[c], 50, 75); 
}

void tegnf(){   
  
  text("Fordeling af terningekast", 70, 750);       
  for(int b=1; b<=6; b++){                          //1-6 talrække
    text(b, 20+50*b, 700);                          
  }
  
  textSize(14);
  rect(55,670,45,en*-20);     text(en+" stk",60,660-ones*20);            //laver diagram.
  rect(105,670,45,to*-20);    text(to+" stk",110,660-twos*20);           
  rect(155,670,45,tre*-20);  text(tre+" stk",160,660-threes*20);       
  rect(205,670,45,fire*-20);   text(fire+" stk",210,660-fours*20);         
  rect(255,670,45,fem*-20);   text(fem+" stk",260,660-fives*20);         
  rect(305,670,45,seks*-20);   text(seks+" stk",310,660-sixes*20);         
  textSize(20);
}
