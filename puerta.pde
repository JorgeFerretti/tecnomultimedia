class Puerta {
  int posx, _posx;
  int posy;
  PImage puerta = loadImage("puertaa.png");

  Puerta(Personaje a) {
    _posx=a.posx;
    posy=25;
  }


  void dibujar() {
    pushStyle();
    fill(0);
    posx=_posx;
    image(this.puerta, this.posx, this.posy, 80, 50);
    popStyle();
  }
  void reset(Personaje a){
  _posx=a.posx;
    posy=0;
  
  }
}
