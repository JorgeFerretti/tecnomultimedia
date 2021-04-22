void setup() {
  size(600, 600);
  background(100);
}

void draw() {
  strokeWeight(2);
  noFill();
  triangle(300, 200, 225, 350, 375, 350);
  //triangle(300,400,225,250,375,250);
  line(225, 250, 375, 350);
  line(225, 350, 375, 250);
  line(300, 200, 300, 400);

  //fucsia
  fill(255, 0, 128);
  triangle(300, 150, 200, 250, 200, 125);
  //naranja
  fill(255, 128, 0);
  triangle(300, 150, 400, 250, 400, 125);
  //lima
  fill(128, 255, 0);
  triangle(400, 250, 400, 350, 500, 300);
  //verde cian
  fill(0, 255, 128);
  triangle(400, 350, 300, 450, 400, 475);
  //azur??
  fill(0, 128, 255);
  triangle(300, 450, 200, 350, 200, 475 );
  //violeta
  fill(120, 40, 140);
  triangle(200, 250, 200, 350, 100, 300);

  //rojo
  fill(255, 0, 0);
  triangle(300, 100, 250, 200, 350, 200);
  //magenta
  fill(255, 0, 255);
  triangle(250, 200, 200, 300, 150, 200);
  //azul
  fill(0, 0, 255);
  triangle(200, 300, 250, 400, 150, 400);
  //cian
  fill(0, 255, 255);
  triangle(250, 400, 300, 500, 350, 400);
  //verde
  fill(0, 255, 0);
  triangle(350, 400, 400, 300, 450, 400);
  //amarillo
  fill(255, 255, 0);
  triangle(400, 300, 350, 200, 450, 200);
}
