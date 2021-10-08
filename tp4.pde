

//link explicación: https://youtu.be/urC0PVzfXtc


float s, m;
String estado;
PFont fuentet, fuente;



void setup() {
  m=1;
  textos();
  size(800, 600);
  background (255 );


  fuentet= loadFont("ACaslonPro-BoldItalic-48.vlw");
  fuente = loadFont("Calibriit.vlw");
  textAlign(CENTER);
  estado= "inicio";
}

void draw() {


  s=millis()/1000;



  //--------------------------ARRANCA LA AVENTURA-------------------------------



  if (estado.equals("inicio")) {

    boton("inicio", "intro", 0, 0, width, height, false, "");
    image(im[0], 0, 0);


    fill(0);
    textFont(fuentet, 80);
    text(txt[0], width/2, height/4);
    textSize(40);
    text(txt[1], width/2, height*1.7/5);
    textSize(25);
    text(txt[2], width/2, height*2/5);
    textFont(fuente, 30);
    text(txt[3], width/2, height*3/4);
  }



  //--------------------------INTRO--------------------------------------------



  else if (estado.equals("intro")) {


    boton("intro", "intro2", 0, 0, width, height, false, "");
    textAlign(LEFT);
    image(im[1], 0, 0);
    fill(0);
    textSize(30);
    text(txt[4], 550, 50, 250, 550);
  } 



  //--------------------------INTRO2--------------------------------



  else if (estado.equals("intro2")) {


    textAlign(LEFT);
    fill(0);
    image(im[2], 0, 0);
    textSize(25);
    text(txt[5], 400, 50, 350, 490);

    boton("intro2", "casa2", 400, 280, 120, 55, true, "aceptar");
    boton("intro2", "baile", 600, 280, 130, 55, true, "no,gracias");
  } 


  //--------------------------BAILE---------------------------------



  else if (estado.equals("baile")) {


    image(im[3], 0, 0);


    fill(0);
    textSize(25);
    text(txt[7], 100, 50, 600, 300);

    boton("baile", "casa2", 200, 210, 120, 55, true, "aceptar");
    boton("baile", "tuhermana", 500, 210, 200, 55, true, "nono,imposible");
  } 


  //--------------------------TU HERMANA--------------------------------


  else if (estado.equals("tuhermana")) {

    image(im[5], 0, 0);
    textAlign(CENTER);
    fill(0);
    textSize(28);
    text(txt[8], 25, 90, 210, 220);
    boton("tuhermana", "desapareció", 0, 0, width, height, false, "");
  }


  //--------------------------DESAPARECIÓ------------------------------


  else if (estado.equals("desapareció")) {

    image(im[6], 0, 0);

    fill(0);
    textSize(25);
    text(txt[9], 100, 60, 600, 200);



    boton("desapareció", "fin", 0, 0, width, height, false, "");
  }

  //--------------------------CASA2------------------------


  else if (estado.equals("casa2")) {
    image(im[4], 0, 0);
    fill(0);
    textFont(fuentet, 25);
    text(txt[6], 25, 120, 210, 220);


    boton("casa2", "seva", 0, 0, width, height, false, "");
  }
  //--------------------------SE VA------------------


  else if (estado.equals("seva")) {


    image(im[7], 0, 0);

    fill(0);
    textFont(fuente, 25);
    text(txt[10], 300, 50, 430, 250);


    boton("seva", "llave", 0, 0, width, height, false, "");
  }

  //--------------------------LLAVE


  else if (estado.equals("llave")) {


    image(im[8], 0, 0);

    fill(0);
    textSize(30);
    text(txt[11], 520, 230, 300, 200);


    boton("llave", "puerta", 490, 340, 120, 50, true, "entrar");
    boton("llave", "nopuerta", 640, 340, 150, 50, true, "no entrar");
  }


  //--------------------------NO PUERTA------------------------------


  else if (estado.equals("nopuerta")) {


    image(im[9], 0, 0);

    fill(0);
    textSize(22);
    text(txt[12], 20, 20, 220, 400);


    boton("nopuerta", "tiempo", 0, 0, width, height, false, "");
  }


  //--------------------------TIEMPO------------------------------


  else if (estado.equals("tiempo")) {


    image(im[10], 0, 0);

    fill(255);
    textSize(22);
    text(txt[13], 390, 450, 400, 400);


    boton("tiempo", "fin", 0, 0, width, height, false, "");
  }

  //--------------------------PUERTA----------------------------


  else if (estado.equals("puerta")) {


    image(im[11], 0, 0);

    fill(255);
    textSize(25);
    textAlign(CENTER);
    text(txt[14], 180, 50, 450, 500);


    boton("puerta", "llave2", 0, 0, width, height, false, "");
  }



  //--------------------------LLAVE MANCHADA----------------------------


  else if (estado.equals("llave2")) {


    image(im[12], 0, 0);

    fill(0);
    textSize(22);
    textAlign(CENTER);
    text(txt[15], 100, 50, 450, 500);


    boton("llave2", "vuelve", 0, 0, width, height, false, "");
  }



  //--------------------------VUELVE----------------------------


  else if (estado.equals("vuelve")) {


    image(im[13], 0, 0);

    fill(0);
    textSize(22);
    textAlign(CENTER);
    text(txt[16], 250, 50, 450, 500);


    boton("vuelve", "ayuda", 0, 0, width, height, false, "");
  }



  //--------------------------AYUDA----------------------------


  else if (estado.equals("ayuda")) {


    image(im[14], 0, 0);

    fill(0);
    textSize(20);
    textAlign(CENTER);
    text(txt[17], 20, 20, 300, 500);


    boton("ayuda", "muere", 0, 0, width, height, false, "");
  }



  //--------------------------MUERE----------------------------


  else if (estado.equals("muere")) {


    image(im[15], 0, 0);

    fill(0);
    textSize(20);
    textAlign(CENTER);
    text(txt[18], 20, 450, 300, 500);


    boton("muere", "mansion", 0, 0, width, height, false, "");
  }



  //--------------------------MANSION----------------------------


  else if (estado.equals("mansion")) {


    image(im[16], 0, 0);

    fill(0);
    textSize(20);
    textAlign(CENTER);
    text(txt[19], 20, 110, 300, 500);


    boton("mansion", "fin", 0, 0, width, height, false, "");
  }



  //--------------------------FIN----------------------------


  else if (estado.equals("fin")) {


    image(im[0], 0, 0);

    fill(0);
    textFont(fuentet, 80);
    text(txt[20], width/2, height/4);
    textSize(20);
    text(txt[21], width/2, height*1.7/5);
    textSize(25);
    text(txt[2], width/2, height*2/5);
    textFont(fuente, 30);
    text(txt[22], width/2, height*3/4);
    textSize(20);
    text(txt[23], 650, 500);

    boton("fin", "inicio", 0, 0, width, height, false, "");
  }




  println("estado:"+ estado);

  for (int i=0; i<20; i++) {


    line(i*100, 0, i*100, height);
    line(0, 100*i, width, 100*i);
  }
}
