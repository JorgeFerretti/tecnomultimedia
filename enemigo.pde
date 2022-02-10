

class Malo {
  int posx=width/2;
  int posy=height/2;
  
  PImage barba= loadImage("barba.png");

  Malo() {
    imageMode(CENTER);
    
  }
  void dibujar() {
    image(this.barba, this.posx, this.posy, 100, 100);
    

  }
  
}
