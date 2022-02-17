// Link a video explicativo: https://youtu.be/jZWL-J21dKc

Aventura aventura;


void setup() {
  aventura = new Aventura();


  size(800, 600);
  background (255 );
}

void draw() {
  aventura.pantallas();
}
void keyPressed() {
  aventura.teclado();
}
