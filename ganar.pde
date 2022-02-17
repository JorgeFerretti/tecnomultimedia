class Ganar {
  int posx;
  int posy;
  int ancho, alto;
  PImage ganar = loadImage("ganar.png");

  Ganar() {
    alto=50;
    ancho=80;
    posx=round(random(ancho, width-ancho));
    posy=height-this.alto;
  }


  void dibujar() {
    println(ganar);

    image(this.ganar, this.posx, this.posy, 100, 100);
  }
  boolean gana(Personaje p) {


    if (p.posx/2<this.posx+this.ancho/2
    &&p.posx>this.posx-this.ancho
    &&p.posy<this.posy+this.alto/2
     &&p.posy>this.posy-this.alto
    )

    {
      return true;
    } else {
      return false;
    }
  }
  void reset(Personaje a) {
    posx=round(random(ancho, width-ancho));
    posy=height-this.alto;
  }
}
