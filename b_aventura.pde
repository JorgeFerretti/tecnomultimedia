
class Aventura {

   
  float s, m;
  String estado;
  PFont fuentet, fuente;
  Juego juego;
  Textos t;
  
  
  Aventura() {

    t = new Textos();
    juego = new Juego();
    

    fuentet= loadFont("ACaslonPro-BoldItalic-48.vlw");
    fuente = loadFont("Calibriit.vlw");
    

    this.estado= "inicio";
    m=1;
    textAlign(CENTER);
  }



  //--------------------------ARRANCA LA AVENTURA-------------------------------


  void pantallas() {
    
    s=millis()/1000;
    imageMode(CORNER);

    //println("estado:"+ estado);   
    textFont(fuente, 30);
    textAlign(CENTER);
    fill(0);
 

//--------------------------INICIO------------------------------------------------------------------------------------------------------------

    if (estado.equals("inicio")) {


      image(t.im[0], 0, 0);



      textFont(fuentet, 80);
      text(t.txt[0], width/2, height/4);
      textSize(40);
      text(t.txt[1], width/2, height*1.7/5);
      textSize(25);
      text(t.txt[2], width/2, height*2/5);

      

      boton("inicio", "intro", 250, 420, 300, 45, true, "click para empezar");
      boton("inicio", "fin", 300, 530, 205, 45, true, "ver créditos");
      
    }



    //--------------------------INTRO--------------------------------------------



    else if (estado.equals("intro")) {


      boton("intro", "intro2", 0, 0, width, height, false, "");
      textAlign(LEFT);
      image(t.im[1], 0, 0);
      fill(0);
      textSize(30);
      text(t.txt[4], 550, 50, 250, 550);
    } 



    //--------------------------INTRO2--------------------------------



    else if (estado.equals("intro2")) {


      textAlign(LEFT);
      fill(0);
      image(t.im[2], 0, 0);
      textSize(25);
      text(t.txt[5], 400, 50, 350, 490);

      boton("intro2", "casa2", 400, 280, 120, 55, true, "aceptar");
      boton("intro2", "baile", 600, 280, 130, 55, true, "no,gracias");
    } 


    //--------------------------BAILE---------------------------------



    else if (estado.equals("baile")) {


      image(t.im[3], 0, 0);


      fill(0);
      textSize(25);
      text(t.txt[7], 100, 50, 600, 300);

      boton("baile", "casa2", 200, 210, 120, 55, true, "aceptar");
      boton("baile", "tuhermana", 500, 210, 200, 55, true, "nono,imposible");
    } 


    //--------------------------TU HERMANA--------------------------------


    else if (estado.equals("tuhermana")) {

      image(t.im[5], 0, 0);
      textAlign(CENTER);
      fill(0);
      textSize(28);
      text(t.txt[8], 25, 90, 210, 220);
      boton("tuhermana", "desapareció", 0, 0, width, height, false, "");
    }


    //--------------------------DESAPARECIÓ------------------------------


    else if (estado.equals("desapareció")) {

      image(t.im[6], 0, 0);

      fill(0);
      textSize(25);
      text(t.txt[9], 100, 60, 600, 200);



      boton("desapareció", "fin", 0, 0, width, height, false, "");
    }

    //--------------------------CASA2------------------------


    else if (estado.equals("casa2")) {
      image(t.im[4], 0, 0);
      fill(0);
      textFont(fuentet, 25);
      text(t.txt[6], 25, 120, 210, 220);


      boton("casa2", "seva", 0, 0, width, height, false, "");
    }
    //--------------------------SE VA------------------


    else if (estado.equals("seva")) {


      image(t.im[7], 0, 0);

      fill(0);
      textFont(fuente, 25);
      text(t.txt[10], 300, 50, 430, 250);


      boton("seva", "llave", 0, 0, width, height, false, "");
    }

    //--------------------------LLAVE


    else if (estado.equals("llave")) {


      image(t.im[8], 0, 0);

      fill(0);
      textSize(30);
      text(t.txt[11], 520, 230, 300, 200);


      boton("llave", "puerta", 490, 340, 120, 50, true, "entrar");
      boton("llave", "nopuerta", 640, 340, 150, 50, true, "no entrar");
    }


    //--------------------------NO PUERTA------------------------------


    else if (estado.equals("nopuerta")) {


      image(t.im[9], 0, 0);

      fill(0);
      textSize(22);
      text(t.txt[12], 20, 20, 220, 400);


      boton("nopuerta", "tiempo", 0, 0, width, height, false, "");
    }


    //--------------------------TIEMPO------------------------------


    else if (estado.equals("tiempo")) {


      image(t.im[10], 0, 0);

      fill(255);
      textSize(22);
      text(t.txt[13], 390, 450, 400, 400);


      boton("tiempo", "fin", 0, 0, width, height, false, "");
    }

    //--------------------------PUERTA----------------------------


    else if (estado.equals("puerta")) {


      image(t.im[11], 0, 0);

      fill(255);
      textSize(25);
      textAlign(CENTER);
      text(t.txt[14], 180, 50, 450, 500);


      boton("puerta", "llave2", 0, 0, width, height, false, "");
    }



    //--------------------------LLAVE MANCHADA----------------------------


    else if (estado.equals("llave2")) {


      image(t.im[12], 0, 0);

      fill(0);
      textSize(22);
      textAlign(CENTER);
      text(t.txt[15], 100, 50, 450, 500);


      boton("llave2", "vuelve", 0, 0, width, height, false, "");
    }



    //--------------------------VUELVE----------------------------


    else if (estado.equals("vuelve")) {


      juego.reset();

      image(t.im[13], 0, 0);

      fill(0);
      textSize(22);
      textAlign(CENTER);
      text(t.txt[16], 250, 50, 450, 500);


      boton("vuelve", "juego", 0, 0, width, height, false, "");
    }
    //--------------------------JUEGO----------------------------


    else if (estado.equals("juego")) {
      fill(255);

      rect(0, 0, width, height);

      juego.dibujar();
      juego.perder();
      juego.ganarjuego();
      
      if (juego.perder) {
        estado="perder";
      }
      if (juego.gg) {
        estado="ayuda";
      }
    }
    //--------------------------PERDER----------------------------

    else if (estado.equals("perder")) {
      image(t.im[17], 0, 0);

      fill(255);
      textSize(50);
      textAlign(CENTER);
      text(t.txt[26], 250, 50, 300, 230);
      
      boton("perder", "fin", 0, 0, width, height, false, "");
      
    }






    //--------------------------AYUDA----------------------------


    else if (estado.equals("ayuda")) {


      image(t.im[14], 0, 0);

      fill(0);
      textSize(20);
      textAlign(CENTER);
      text(t.txt[17], 20, 20, 300, 500);


      boton("ayuda", "muere", 0, 0, width, height, false, "");
    }



    //--------------------------MUERE----------------------------


    else if (estado.equals("muere")) {


      image(t.im[15], 0, 0);

      fill(0);
      textSize(20);
      textAlign(CENTER);
      text(t.txt[18], 20, 450, 300, 500);


      boton("muere", "mansion", 0, 0, width, height, false, "");
    }



    //--------------------------MANSION----------------------------


    else if (estado.equals("mansion")) {


      image(t.im[16], 0, 0);

      fill(0);
      textSize(20);
      textAlign(CENTER);
      text(t.txt[19], 20, 110, 300, 500);


      boton("mansion", "fin", 0, 0, width, height, false, "");
    }



    //--------------------------FIN----------------------------


    else if (estado.equals("fin")) {


      image(t.im[0], 0, 0);

      textAlign(CENTER);
      fill(0);
      textFont(fuentet, 80);
      text(t.txt[20], width/2, height/4);
      textSize(20);
      text(t.txt[21], width/2, height*1.7/5);
      textSize(25);
      text(t.txt[2], width/2, height*2/5);
      textFont(fuente, 30);
      text(t.txt[22], width/2, height*3/4);
      textSize(22);
      textAlign(RIGHT);
      text(t.txt[23], 790, 500);
      text(t.txt[24], 790, 515);
      text(t.txt[25], 790, 530);



      boton("fin", "inicio", 0, 0, width, height, false, "");
    }
  }



  void boton (String estado1, String estado2, int posx, int posy, int tamx, int tamy, boolean texto, String letras) {

    if (texto) {
      pushStyle();
      noStroke();
      fill(0, 55);
      rect(posx, posy, tamx, tamy, 23);

      fill(0);
      textAlign(CENTER);
      text(letras, posx, posy+10, tamx, tamy);
      popStyle();
    }

    if (estado.equals(estado1) && mousePressed && mouseX<posx+tamx && mouseX>posx && mouseY<posy+tamy && mouseY>posy && this.s-this.m>0.3) {
      this.estado=estado2;
      this.m=this.s;
    }
  }
  void teclado() {

    juego.teclas();
  }
}
