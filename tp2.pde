int estado=1;
int vel;
PFont letra;
PImage i1, i2, i3, i4, i5;
int posy;
void setup() {

  letra= createFont("NeumaticCompressed-Medium.ttf", 48);
  size(600, 400);
  background(0);
  i1=loadImage("1.png");
  i2=loadImage("2.png");
  i3=loadImage("3.png");
  i4=loadImage("4.png");
  i5=loadImage("5.png");
  textAlign(CENTER);
}

void draw() {


  if (estado==1) {
    vel=0;
  } else if (estado==2) {
    vel=vel+7;
    posy=3076-vel;
  } else if (estado==3) {
    vel=0;
  }

  if (estado==1 && mouseX<width && mouseX>0 && mouseY<height && mouseY>0) {
    estado=2;
  } else if (posy<=height && estado==2 ) {
    estado=3;
  } else if (keyPressed && estado==3) {
    estado=1;
  }

  if (estado==2) {

    image(i1, 0, 400-vel);
    image(i2, 0, 1076-vel);
    image(i3, 0, 1476-vel);
    image(i4, 0, 1876-vel);
    image(i5, 0, 2276-vel);


    fill(255);
    //Primera Pantalla
    textSize(57);
    text("Barba Azul", 300, 870-vel);
    textSize(20);
    text("Por Charles Perrault", 340, 890-vel);

    //segunda pantalla
    textSize(32);
    text("Barba Azul", 480, 1200-vel);
    textSize(18);
    text("como Barba Azul", 500, 1216-vel);
    textSize(32);
    text("La Hija Menor", 480, 1300-vel);
    textSize(18);
    text("como su esposa", 500, 1316-vel);


    //tercera pantalla


    textSize(32);
    text("Los hermanos", 120, 1520-vel);
    textSize(18);
    text("como los caballeros", 140, 1536-vel);
    textSize(32);
    text("Ana", 50, 1580-vel);
    textSize(18);
    text("como la hermana", 105, 1596-vel);

    //cuarta pantalla


    textSize(44);

    textSize(32);
    text("Christopher Nolan", 180, 2230-vel);
    textSize(18);
    text("productor", 200, 2246-vel);



    //quinta pantalla

    textSize(32);
    text("Carlitos", 130, 2555-vel);
    text("Perrault", 140, 2580-vel);
    textSize(18);
    text("guionista", 145, 2590-vel);

    //sexta pantalla
    fill(0);
    rect(0, 2670-vel, 600, 600);
    fill(255);
    textSize(30);
    text("presiona cualquier tecla para reiniciar",300,200+2676-vel);
  }


  println("estado:"+estado+" "+mouseX+" "+mouseY);
  println("posy"+posy);
  
  
}
