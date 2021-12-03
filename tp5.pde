//Explicación en youtube: https://youtu.be/Swq7cayuoP4



Control control;

void setup() {

  size(800, 600);
  control = new Control();
}


void draw() {
  background (255);

  control.cambioestados();
  control.pantallas();
}
void keyPressed() {
  control.teclado();
}
