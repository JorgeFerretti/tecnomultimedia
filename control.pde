

class Control {
  PFont letra;
  int botonesancho=170;
  int botonesalto=80;
  Juego juego;
  String estado="pantalla de inicio";
  PImage inicio, perder, ganaste;
  Control () {
    letra = loadFont("BodoniMTCondensed-48.vlw");
    rectMode(CENTER);
    textAlign(CENTER);
    textFont(letra);
    juego = new Juego();
    inicio=loadImage("inicio.png");
    perder=loadImage("perder.png");
    ganaste=loadImage("ganaste.png");
  }
  void pantallas() {
    //println(estado);
    if (this.estado=="pantalla de inicio") {

      image(inicio, width/2, height/2);
      rect(width/4*3, height/4, botonesancho, botonesalto, 30);
      pushStyle();
      textSize(70);
      fill(0);
      text("JUGAR", width/4*3, height/4+20);
      popStyle();
      pushStyle();
      textSize(70);
      fill(0);
      text("El asesino Barba Azul", width/3*2, height/8);
      popStyle();
    } else if (this.estado=="juego") {
      juego.dibujar();
      juego.perder();
      juego.ganarr();
    } else if (this.estado=="perder") {

      image(perder, width/2, height/2);
      pushStyle();
      textSize(100);
      fill(255);
      text("PERDISTE", width/2, height/7);
      popStyle();
    } else if (this.estado=="ganar") {

      image(ganaste, width/2, height/2);
      pushStyle();
      textSize(100);
      fill(0);
      text("GANASTE", width/4*3.3, height/4);
      popStyle();
    }
  }
  void teclado() {
    juego.teclas();
  }
  void cambioestados() {
    if (this.estado=="pantalla de inicio" && mousePressed && mouseX< width/4*3+this.botonesancho/2 && mouseX> width/4*3-this.botonesancho/2 && mouseY<height/4+this.botonesalto/2 && mouseY>height/4-botonesalto/2 ) {
      estado="juego";
    } else if (this.estado=="juego"&&juego.perder) {
      estado="perder";
    } else if (this.estado=="perder" && mousePressed) {
      juego.reset();
      estado="pantalla de inicio";
    } else if (this.estado=="juego"&&juego.gg) {
      estado="ganar";}
      else if (this.estado=="ganar" && mousePressed) {
      
      estado="pantalla de inicio";
    }
  }
}
