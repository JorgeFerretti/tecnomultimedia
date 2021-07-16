float alto, ancho;
float h, w, wb, hb;
int ang;
int estado=0;
PFont fuente;

void setup() {

  textAlign(CENTER);

  fuente=loadFont("Arial-Black-48.vlw");

  size(500, 500);
  ancho=86.6;
  alto=100;
}

void draw() {


  translate(250, 250);
  rotate(radians(ang));
  background(0);

  //-----------------------------------------------------ciclos for-----------------------------------------------------------
  for (int i=0; i<=40; i++) {
    for (int j=0; j<=40; j++) {
      stroke(255);
      noFill();
      strokeWeight(5);
      w=(ancho*i)-700;
      h=((alto*j)-23*j)-800;
      wb=((ancho*i)-ancho/2)-700;

      //----------------------FILAS PARES-------------------------------

      if (j%2==0) {

        //HEXÁGONO GRANDE

        beginShape();

        vertex(43+w, 0+h);
        vertex(86.7+w, 25+h);
        vertex(86.7+w, 75+h);
        vertex(43+w, 100+h);
        vertex(0+w, 75+h);
        vertex(0+w, 25+h);
        vertex(43+w, 0+h);

        endShape();

        //HEXÁGONO DOS

        beginShape();

        vertex(43+w, 12.5+h);
        vertex(75.48+w, 31.25+h);
        vertex(75.48+w, 68.75+h);
        vertex(43+w, 87.5+h);
        vertex(10.52+w, 68.75+h);
        vertex(10.52+w, 31.25+h);
        vertex(43+w, 12.5+h);

        endShape();

        //HEXÁGONO TRES

        beginShape();

        vertex(43+w, 25+h);
        vertex(64.65+w, 37.5+h);
        vertex(64.65+w, 62.25+h);
        vertex(43+w, 75+h);
        vertex(21.35+w, 62.5+h);
        vertex(21.35+w, 37.5+h);
        vertex(43+w, 25+h);

        endShape();

        //HEXÁGONO CUATRO

        beginShape();

        vertex(43+w, 37.5+h);
        vertex(53.83+w, 43.75+h);
        vertex(53.83+w, 56.25+h);
        vertex(43+w, 62.5+h);
        vertex(32.17+w, 56.25+h);
        vertex(32.17+w, 43.75+h);
        vertex(43+w, 37.5+h);

        endShape();


        //---------------------------------------------------------------------- FILAS IMPARES --------------------------------------------------------------------
      } else {


        //HEXÁGONO GRANDE


        beginShape();
        vertex(43+wb, 0+h);
        vertex(86.7+wb, 25+h);
        vertex(86.7+wb, 75+h);
        vertex(43+wb, 100+h);
        vertex(0+wb, 75+h);
        vertex(0+wb, 25+h);
        vertex(43+wb, 0+h);
        endShape();


        //HEXÁGONO DOS

        beginShape();

        vertex(43+wb, 12.5+h);
        vertex(75.48+wb, 31.25+h);
        vertex(75.48+wb, 68.75+h);
        vertex(43+wb, 87.5+h);
        vertex(10.52+wb, 68.75+h);
        vertex(10.52+wb, 31.25+h);
        vertex(43+wb, 12.5+h);

        endShape();


        //HEXÁGONO TRES

        beginShape();

        vertex(43+wb, 25+h);
        vertex(64.65+wb, 37.5+h);
        vertex(64.65+wb, 62.25+h);
        vertex(43+wb, 75+h);
        vertex(21.35+wb, 62.5+h);
        vertex(21.35+wb, 37.5+h);
        vertex(43+wb, 25+h);

        endShape();

        //HEXÁGONO CUATRO

        beginShape();

        vertex(43+wb, 37.5+h);
        vertex(53.83+wb, 43.75+h);
        vertex(53.83+wb, 56.25+h);
        vertex(43+wb, 62.5+h);
        vertex(32.17+wb, 56.25+h);
        vertex(32.17+wb, 43.75+h);
        vertex(43+wb, 37.5+h);

        endShape();
      }
    }
  }


  if (estado==0) {

    
    fill(#FF0303);
    textSize(30);
    text("apretá espacio", 0, 200);
    text("o 'r' para reiniciar", 0, 225);
    
  } else if (estado==1) {
    ang=ang+1;
  }
  println(estado+"   "+key);
}

void keyPressed() {

  if (estado==0 && key==' ') {

    estado=1;
  } else if (estado==1 && key==' ') {
    estado=0;
  } else if (estado==1 || estado==0 && key=='r') {
    estado=0;
    ang=0;
  }
}
