


void setup() {

  rectMode(CENTER);
  size(400, 400);
  fill(#00FF01);
  rect(400*5/7, 400*2/8, 100, 100);

  fill(#001BFF);
  ellipse(400*5/7, 400*6/8, 100, 100);


  strokeWeight(8);
  line(0, 0, 400, 0);
  line(0, 0, 0, 400);
  line(400, 0, 400, 400);
  line(0, 400, 400, 400);
  
  fill(#000105);
  textSize(15);
  text("Esto es un cuadrado verde:",20,110);
  text("Esto es una ellipse azul:",20,310);  
  
  
}
