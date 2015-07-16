#define GREEN 10
#define RED 16
int type;

void setup() {
  pinMode(GREEN, OUTPUT);
  pinMode(RED, OUTPUT);
  Serial.begin(9600);
  digitalWrite(RED, LOW);
  digitalWrite(GREEN, LOW);
}

void loop() {
  if (Serial.available()) {  
    type = Serial.parseInt();
    Serial.write(type);      
  }
  if (type == 1) {
      digitalWrite(RED, LOW);
      digitalWrite(GREEN, HIGH);
  } else if (type == 2) {
      digitalWrite(GREEN, LOW);
      digitalWrite(RED, HIGH);
  } else if (type == 3) {
      digitalWrite(GREEN, LOW);
      digitalWrite(RED, LOW);
  }
}
