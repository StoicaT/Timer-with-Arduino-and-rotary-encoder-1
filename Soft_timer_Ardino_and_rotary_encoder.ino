


//Designed by Stoica Tudor 07.2019  Rew 08.2019
//"Programable Timer" from n seconds to 0, n max=9999s.
// Possibility to memorize preset time.
// Rotary encoder

#include <LiquidCrystal.h>  // include the library code:
// LiquidCrystal (RS, E, D4,D5,D6,D7)
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

byte u=0;// seconds s
byte z=0;// sX10
byte s=0;// sX100
byte m=0;// sX1000
int counter=0;
int n=0;
#define btMem A3 //Button "Memory" to ground
#define oRel 9 // OUT relay
#define oBuz 10 // OUT buzzer
#define pUsh A2 // Push rot. enc. to ground
#define rEnb A1 //Rot enc "B" to ground
#define rEna A0 //Rot enc "A" to ground
void setup() {
   lcd.begin(16, 2);
   pinMode(btMem, INPUT_PULLUP);
   pinMode(pUsh, INPUT_PULLUP);
   pinMode(rEnb, INPUT_PULLUP);
   pinMode(rEna, INPUT_PULLUP);
   pinMode(oRel, OUTPUT);
   pinMode(oBuz, OUTPUT);
  
//Welcome message
   lcd.clear();
  lcd.display();
 lcd.print("    HELLO !");
  delay(1000);
}

void loop() {
  
// set timer
 
  lcd.clear();// set s. 
  lcd.print("Set t:     _"); 
  lcdpr(); 
  do{
  u= roTen();
  lcdpr();
  }while(digitalRead(pUsh)==HIGH);//"Push" button
  delay(10);
  counter=0;
  
  
  lcd.clear();// set 10Xs.
  lcd.print("Set t:    _");  
   lcdpr();
    do{  
  z= roTen();
  lcdpr();
  }while(digitalRead(pUsh)==HIGH);//"Push" button
    delay(10);
   counter=0; 
   
    
     lcd.clear();// set 100Xs.
     lcd.print("Set t:   _"); 
     lcdpr(); 
  do{  
  s= roTen();
  lcdpr(); 
  }while(digitalRead(pUsh)==HIGH);//"Push" button
    delay(10);
    counter=0; 
    
     
  lcd.clear();//set sX1000 
  lcd.print("Set t:  _");
  lcdpr();
    do{  
  m= roTen();
  lcdpr();
  }while(digitalRead(pUsh)==HIGH);//"Push" button
 delay(10);
 counter=0; 
  
 //Out of set routine
 
    n=m*1000+s*100+z*10+u;//compute "n"
    if(n!=0){
    
  do{//Memory  
    n=m*1000+s*100+z*10+u;//compute "n"
    
     //display set "n"
  lcd.clear();
  lcd.print("Remain: s");
  lcd.setCursor(8,1);
  lcd.print(n);
   
while(0==digitalRead(pUsh));//"Push" button to start
while(1==digitalRead(pUsh));
delay(50);

while(millis() % 1000 != 0);//sincro with time base

  digitalWrite(oRel,HIGH);//Start timer
  
  do{// decrease time
  //display current "n"
  lcd.clear();
  lcd.print("Remain: s");
  lcd.setCursor(8,1);
  lcd.print(n);
  
  while(millis() % 1000 != 0);//time base, 1s.
  
  n=n-1;
  }while(n!=0);
  
  lcd.clear(); //display n=0
  lcd.print("Remain: s");
  lcd.setCursor(8,1);
  lcd.print(n);
  
  digitalWrite(oRel,LOW);//Stop timer
  
digitalWrite(oBuz,HIGH);// start beep to end
delay(1000);
digitalWrite(oBuz,LOW);   //  stop beep to end

  }while(digitalRead(btMem)==HIGH);//"Memory" button
  u=0;
  z=0;
  s=0;
  m=0;
}}// end of loop


     
byte roTen(){ //  Rotary encoder routine
 while(digitalRead(pUsh) &digitalRead(rEnb) & digitalRead(rEna)==1);
  if(digitalRead(pUsh)==0){
  return counter;
  }
   switch(digitalRead(rEna)) {
    case HIGH:
    while(digitalRead(rEna)==0);
    while(digitalRead(rEnb)==0);
    counter ++;
    counter=counter%10;
    break;
    case LOW:
   while(digitalRead(rEnb)==0);
   while(digitalRead(rEna)==0);
   counter --;
    if(counter==-1){
    counter=9;//left begin with 9
    } 
    counter=abs(counter)%10;
  break; 
  }
  return counter;
   }                                                                
  
  void lcdpr(){//display "n" routine
  lcd.setCursor(8,1);
  lcd.print(m);
  lcd.print(s);
  lcd.print(z);
  lcd.print(u);
  delay(150);
  }

 
  
