#include <LiquidCrystal.h> // includes the LiquidCrystal Library 
LiquidCrystal lcd(1, 2, 4, 5, 6, 7); // Creates an LC object. Parameters: (rs, enable, d4, d5, d6, d7) 
void setup() { 
 lcd.begin(16,2);
 pinMode(10,INPUT);
 pinMode(11,INPUT);
 pinMode(12,INPUT);
 pinMode(9,INPUT);
 pinMode(8,INPUT);
 // Initializes the interface to the LCD screen, and specifies the dimensions (width and height) of the display } 
}
void loop() {
int z4 = digitalRead(8);
int z3 = digitalRead(9);
int z2 = digitalRead(10);
int z1 = digitalRead(11);
int z0 = digitalRead(12);
 int no = (z4<<4)+(z3<<3)+(z2<<2)+(z1<<1)+z0;
 lcd.print(no); // Prints "Arduino" on the LCD 
 delay(1000); // 3 seconds delay  
 lcd.clear(); // Clears the LCD screen 
}
