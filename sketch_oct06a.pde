 boolean lightOn;
 boolean buttonPressed; 
 const int ledPin = 4;
 const int buttonPin = 7; 
 int buttonState = 0; 
 
void setup() {
  Serial.begin(9600); 
  pinMode(buttonPin, INPUT);
  pinMode(ledPin, OUTPUT); 
  lightOn = false;
  buttonPressed = false; 
}

void loop() {
  buttonState = digitalRead(buttonPin); 
  if (buttonState == 1 && buttonPressed == false) {
    lightOn = !lightOn;
    buttonPressed == true;
    Serial.println("Button On");  
   }
  if (buttonState == 0 && buttonPressed == true) {
    buttonPressed == false;
    Serial.println("Button Off"); 
  } 
  if (lightOn == true) {
    digitalWrite(ledPin, HIGH); 
  } else {
    digitalWrite(ledPin, LOW);     
  } 
}
