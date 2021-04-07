
//tarea 06/04 

void setup() {

  strokeWeight(3);

  rectMode(CENTER);
  size(400, 400);
  fill(#00FF01);
  rect(400*5/7, 400*2/8, 100, 100);

  fill(#001BFF);
  ellipse(400*5/7, 400*6/8, 100, 100);

  strokeWeight(9);
  noFill();
  rect(200, 200, 400, 400);

  fill(#000105);
  textSize(16);
  text("Esto es un cuadrado verde:", 20, 110);
  text("Esto es una ellipse azul:", 20, 310);
}
