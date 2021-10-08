void boton (String estado1, String estado2, int posx, int posy, int tamx, int tamy, boolean texto, String letras) {


  if (texto) {
    pushStyle();
    noStroke();
    fill(0, 55);
    rect(posx, posy, tamx, tamy, 23);

    fill(0);
    textAlign(CENTER);
    text(letras, posx, posy+5, tamx, tamy);
    popStyle();
  }

  if (estado.equals(estado1) && mousePressed && mouseX<posx+tamx && mouseX>posx && mouseY<posy+tamy && mouseY>posy && s-m>0.3) {
    estado=estado2;
    m=s;
  }
}
