

Aventura aventura;


void setup() {
  aventura = new Aventura();


  size(800, 600);
  background (255 );
}

void draw() {
  aventura.todo();
}
void keyPressed() {
  aventura.teclado();
}
