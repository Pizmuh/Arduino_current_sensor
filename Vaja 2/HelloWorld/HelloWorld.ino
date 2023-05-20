


// include the library code:
#include <LiquidCrystal.h>

bool stanjereleja = 0;
float tokovni_senzor = 0;
char buffer[40];
bool proces = 0;
int numb_procesa = 0;

// initialize the library by associating any needed LCD interface pin
// with the arduino pin number it is connected to
const int rs = 13, en = 12, d4 = 11, d5 = 10, d6 = 9, d7 = 8;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

void setup() {
   Serial.begin(9600);
  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("hello, world!");

  pinMode(A0, INPUT);
  for (int i = 0; i<14; i++){
    pinMode(i, OUTPUT);
  }
  pinMode(7, INPUT);
  pinMode(6, INPUT);


}
int vklop = 7;
int rele = 5;
int izklop = 6;
float procenti = 0;

void loop() {
 
  //Serial.println(analogRead(A0));
  
  if ( digitalRead(vklop) == HIGH){
    
    proces = 1;
  }
  else if ( digitalRead(izklop) == HIGH){
    digitalWrite(rele, LOW);
      proces = 0;
      numb_procesa = 0;
       digitalWrite(4, LOW);
    digitalWrite(3, LOW);
    digitalWrite(2, LOW);
  }
  else if ((procenti * procenti) > 100*100){
    digitalWrite(rele, LOW);
      proces = 0;
      numb_procesa = 0;
       digitalWrite(4, LOW);
    digitalWrite(3, LOW);
    digitalWrite(2, LOW);
  }
 if ((proces == 1) && (numb_procesa < 1)){

   digitalWrite(2, HIGH);
    digitalWrite(3, LOW);
    digitalWrite(4, LOW);
    delay (1000);
     digitalWrite(2, LOW);
    digitalWrite(3, HIGH);
    digitalWrite(4, LOW);
    delay(1000);
     digitalWrite(2, LOW);
    digitalWrite(3, LOW);
    digitalWrite(4, HIGH);
    delay(1000);
     digitalWrite(2, LOW);
    digitalWrite(3, LOW);
    digitalWrite(4, LOW);
  
  float average = 0;
 digitalWrite(rele, HIGH);
  numb_procesa +=1;
 }
 else if ((proces == 1) && (numb_procesa > 0)){

  float average = 0;
 for(int i = 0; i < 1000; i++) {
     average = average + (.0264 * analogRead(A0) -13.46);//for the 5A mode,  
  
 }
 float currentVal = average/1000;
 float procenti = ((currentVal)/2) *100;
 Serial.print("Current :");
 Serial.print(currentVal);
 Serial.println("A");
 
  lcd.setCursor(0, 0);
  lcd.print("Inot:");
  lcd.setCursor(5, 0);
  lcd.print(currentVal);
  lcd.setCursor(10, 0);
  lcd.print("A(DC)");
  
  lcd.setCursor(0, 1);
  lcd.print("I:");
  lcd.setCursor(2, 1);
  lcd.print(procenti);
  lcd.setCursor(7, 1);
  lcd.print("%");

  if ((procenti*procenti > 100*100) && ( digitalRead(vklop) != HIGH)) {
    digitalWrite(rele, LOW);
      proces = 0;
      numb_procesa = 0;
    digitalWrite(4, LOW);
    digitalWrite(3, LOW);
    digitalWrite(2, LOW);
  }
  else if(procenti*procenti > 90*90){
    digitalWrite(2, HIGH);
    digitalWrite(3, LOW);
    digitalWrite(4, LOW);
  } 
  else if  (procenti*procenti > 75*75){
    digitalWrite(3, HIGH);
    digitalWrite(2, LOW);
    digitalWrite(4, LOW);
  }else{
      
    digitalWrite(4, HIGH);
    digitalWrite(3, LOW);
    digitalWrite(2, LOW);
  
  }

 }
}
