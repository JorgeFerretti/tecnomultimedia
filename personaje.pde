class Personaje {

  int posx;
  int posy;
  int direcx=1;
  int directy=1;
  int ancho, alto;
  PImage personaje =loadImage("personaje.png");
  Personaje() {
    imageMode(CENTER);
    
    this.posx=round(random(200, width-200));
    this.posy=50;
    this.ancho= 45;
    this.alto=90;
  }

  void dibujar() {
    image(this.personaje, this.posx, this.posy, this.ancho, this.alto);
    
  }


  void teclado() {
    if (keyCode==UP) {
      this.posy-=4;
    } else if (keyCode==DOWN) {
      this.posy+=4;
    }
    if (keyCode==LEFT) {
      this.posx-=4;
    } else if (keyCode==RIGHT) {
      this.posx+=4;
    }
  }
  void reset() {
    this.posx=round(random(200, width-200));
    this.posy=50;
  }
}
