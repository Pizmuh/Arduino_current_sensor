// (c) Michael Schoeffler 2019, http://www.mschoeffler.de

#include <SPI.h>
#include <SD.h>
#include <TFT.h> 

#define PIN_SD_CS 4
#define PIN_TFT_CS 10
#define PIN_DC 9
#define PIN_RST 8


TFT TFTscreen = TFT(PIN_TFT_CS, PIN_DC, PIN_RST);

#include <TFT.h>
#include <SPI.h>

//pin definitions:
#define CS 10
#define DC 9
#define RST 8
#define BKLIGHT 6 // Backlight control pin

#define BRIGHTNESS 204 // Backlight intensity (0-255)
#define RANGE 100 // Vertical size of the graph in pixels.
#define WIDTH 128 // Horizontal size of Display in pixels.
#define HEIGHT 160 // Vertical size of Display in pixels.
#define PERSIST 500 // persistence of the graph (milliseconds).



int value ;
int last_value;
int x_pos= 0; // cursor position
int offset= 10; // vertical graph displacement in pixels.


void setup() {
  // initialize default serial connection to send debug information
  Serial.begin(9600);
    pinMode(A0, INPUT);
  for (int i = 0; i<14; i++){
    pinMode(i, OUTPUT);
  }
  pinMode(7, INPUT);
  pinMode(6, INPUT);

 TFTscreen.setTextSize(2);
  while (!Serial) {
    // wait until default serial connection is fully set up
  }
  
  //The following two lines replace "TFTscreen.begin();" => avoids that red and blue (?) are swapped/interchanged
  TFTscreen.initR(INITR_BLACKTAB);
  TFTscreen.setRotation(1);
  
   TFTscreen.setTextSize(2);
  TFTscreen.background(0, 0, 0);

TFTscreen.setRotation(0);
TFTscreen.background(0,0,0); // dark green background
TFTscreen.stroke(255,255,255); // white stroke
analogWrite(BKLIGHT,BRIGHTNESS); //Set brightness.

TFTscreen.setTextSize(1);
 TFTscreen.initR(INITR_BLACKTAB);
TFTscreen.text("Histogram toka",40,151);

   TFTscreen.setTextSize(2);

  
}
float currentVal = 0;
 float procenti = 0;

int vklop = 7;
int rele = 5;
int izklop = 6;

bool stanjereleja = 0;
float tokovni_senzor = 0;
char buffer[40];
bool proces = 0;
int numb_procesa = 0;



char printout[4];

int period = 500;
unsigned long time_now = 0;
int neki = 0;

void loop() {
  neki = currentVal;
        
last_value= value;
value= analogRead(A0);
value= map(procenti,0,1023,149,23);
value -= offset;
if(value <= 23) value= 23; //truncate off screen values.

plotLine(last_value ,value );





    if((millis()- time_now >= period)){
      Serial.println(currentVal);
      Serial.println(neki);
      time_now = millis();
     
    int redRandom = random(0, 255);
    int greenRandom = random (0, 255);
    int blueRandom = random (0, 255);
     
    // set a random font color
    TFTscreen.stroke(redRandom, greenRandom, blueRandom);
    
  
    String procenti_string = String(currentVal);
  
      procenti_string.toCharArray(printout,10);
       TFTscreen.text("Inot:",0,10);
       TFTscreen.fillRect(70, 10, 70, 20, 0x0000);
      TFTscreen.text(printout,70,10);
      TFTscreen.text("A",140,10);
  
  
     procenti_string = String(procenti);
  
      procenti_string.toCharArray(printout,10);
       TFTscreen.text("I:",0,50);
       TFTscreen.fillRect(30, 50, 100, 30, 0x0000);
      TFTscreen.text(printout,30,50);
      TFTscreen.text("%",140,50);



  }
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
     average = average + analogRead(A0);//for the 5A mode,  
  
 }
  currentVal = ((average/100)* 5)/1027 +0.1;
  procenti = currentVal/5 *100;
 Serial.print("Current :");
 Serial.print(currentVal);
 Serial.print(analogRead(A0));
 Serial.println("A");
 neki = currentVal;
  

   
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
    numb_procesa = 1;
  } 
  else if  (procenti*procenti > 75*75){
    digitalWrite(3, HIGH);
    digitalWrite(2, LOW);
    digitalWrite(4, LOW);
    numb_procesa = 1;
  }else{
      
    digitalWrite(4, HIGH);
    digitalWrite(3, LOW);
    digitalWrite(2, LOW);
    numb_procesa = 1;
  
  }

 }
}



void plotLine(int last,int actual){
if(x_pos==0){
  last= actual;
  TFTscreen.fillRect(0, 80, 150, 60, 0x1100);
  } // first value is a dot.
TFTscreen.line(x_pos-1, last, x_pos, actual); // draw line.
x_pos++;
if(x_pos > WIDTH){
x_pos=0;

delay(PERSIST);

}
}
