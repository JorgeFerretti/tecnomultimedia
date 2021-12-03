class Juego {
  Ganar ganar;
  Personaje personaje;
  Malo barba;
  int cant=6;
  Puerta puerta;
  boolean perder=false;
  boolean gg=false;

  Cuchillo [] cuchis= new Cuchillo[cant];


  Juego() {
    ganar = new Ganar();
    personaje= new Personaje();
    barba = new Malo();
    puerta = new Puerta(personaje);
    for (int i=0; i<cant; i++) {
      this.cuchis[i]= new Cuchillo(barba);
    }
  }

  void dibujar() {
    println(ganar);

    ganar.dibujar();

    puerta.dibujar();
    personaje.dibujar();

    for (int i=0; i<cant; i++) {
      
      cuchis[i].dibujar();
      cuchis[i].mover(i);
      cuchis[i].resetataque(barba);
    }
    barba.dibujar();
    println(gg);
  }     

  void teclas() {
    personaje.teclado();
  }
  void perder() {
    
    for (int i=0; i<cant; i++) {
      if (cuchis[i].colision(personaje)) {
        perder=true;
      }
    }
  } 
  void ganarr() {


    if (ganar.gana(personaje)) {
      gg=true;
    }
  }
  void reset(){
  this.perder=false;
  this.gg=false;
  personaje.reset();
  puerta.reset(personaje);
  ganar.reset(personaje);
  }
}
