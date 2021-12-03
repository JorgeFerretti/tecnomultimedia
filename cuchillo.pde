class Cuchillo { //<>//
  int posx;
  int posy;
  PImage cuchi = loadImage("cuchillo.png");
  int ancho;
  float s, m;
  int mod=1;


  Cuchillo(Malo a) {
    imageMode(CENTER);
    posx=a.posx;
    posy=a.posy;
  }
  void dibujar() {
    image(this.cuchi, this.posx, this.posy);
    //println(this.mod, this.s, this.m);
  }

  boolean colision(Personaje p) {

    if (
      this.posx+this.ancho<p.posx+p.ancho/2 &&
      this.posx-this.ancho>p.posx-p.ancho/2 &&
      this.posy+this.ancho<p.posy+p.alto/2 &&
      this.posy-this.ancho>p.posy-p.alto/2) 
    {
      return true;
    }else{return false;}
  }
  void resetataque(Malo a) {
    s=millis()/100;

    if (this.s-this.m>=25) {
      this.posx=a.posx;
      this.posy=a.posy;
      m=s;
    }
  }  void mover(int i) {


    if (round(this.mod)==1) {

      if (i==1) { 
        posy+=3;
      }
      if (i==2) {    
        posx+=3;
      }
      if (i==3) {    
        posx-=3;
      }
      if (i==0) {
        posy-=4;
      }
      if (i==4) {    
        posx-=3;
        posy-=3;
      }
      if (i==5) {    
        posx+=3;
        posy+=3;
      }
    }
  }
}
