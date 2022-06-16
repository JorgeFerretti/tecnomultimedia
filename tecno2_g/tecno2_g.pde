Line [] lineas = new Line[222];
import oscP5.*;
float amp;
float pitch;

float minimoAmp= 40;//umbral de amplitud
float maximoAmp= 85;

float minimoPitch= 55; //umbral de pitch
float maximoPitch=95;

float f = 0.95; //corrección

boolean haySonido=false;
boolean habiaSonido=false;

float destello=100;
int posDestello;

PImage marco;

GestorSenial gestorAmp;
GestorSenial gestorPitch;

OscP5 osc;

int gros, rnd, offset, index, spacing, color_op;
float color1, color2, angle_off;
boolean debase;
float [] limits = {random(10, 50), random(80, 120), random(100, 140), random(140, 160)};
float [] limits2 = {random(10, 50), random(80, 120), random(100, 140), random(140, 160)};

boolean evento= false;

void setup() {
  
  marco=loadImage("marco.png");

  osc = new OscP5(this, 12345);

  gestorAmp = new GestorSenial( minimoAmp, maximoAmp, f );
  gestorPitch = new GestorSenial( minimoPitch, maximoPitch, f );

  size(500, 800, P2D);
  colorMode(HSB, 350, 100, 100);

  // Globales

  posDestello=int(random(0, 222));

  gros = 4;
  offset = 0;
  index = 0;
  spacing = 40;
  debase = false;
  rnd = int(random(30, 100));
  angle_off = 10;

  // Set classes

  for (int i=0; i<lineas.length; i++) {
    lineas [i] = new Line();
  }
}

void oscEvent ( OscMessage m) {

  if (m.addrPattern().equals("/amp")) {

    amp = m.get(0).floatValue();
    //println("amp:"+gestorAmp.filtradoNorm());
  }

  if (m.addrPattern().equals("/pitch")) {

    pitch = m.get(0).floatValue();
    //println("pitch:"+pitch);
  }
}

void draw() {

  haySonido= gestorAmp.filtradoNorm()>0.1;

  println("sonido:"+haySonido+"|destello:"+destello);

  gestorAmp.actualizar( amp );
  gestorPitch.actualizar( pitch );

  background(0, 0, 0);
  strokeWeight(gros);
  translate(width/2, 0);

  drawGroup();

  cambiarColor();


  //  CONTROL DEL DESETELLO

  if (gestorAmp.filtradoNorm()>0.8 && destello>9) {
    evento=true;
    destello--;
  } else if (gestorAmp.filtradoNorm()<0.8 && frameCount%2==0 && destello<100) {
    evento=false;
    destello++;
  }
  
  image(marco,-(width/2),0);
  
}

void drawGroup() {
  stroke(0, 100, 100);
  for (int i=0; i<lineas.length; i++) {

    color1 = map(gestorAmp.filtradoNorm(), 0, 1, limits[0], limits[1]);
    color2 = map(gestorAmp.filtradoNorm(), 0, 1, limits[2], limits[3]);
    pushStyle();
    stroke(i < lineas.length / 2 ? color1 + i / 2 : color2 + i / 2, 100, i %  2 == 0 ? 0 : map(gestorPitch.filtradoNorm(), 0, 1, 60, 100));



    if (i>posDestello-20 && i<(posDestello+20)) {
      stroke(i < lineas.length / 2 ? color1 + i / 2 : color2 + i / 2, i < posDestello ? destello+map(i, posDestello, posDestello-20, 0, 100) : destello+map(i, posDestello, posDestello+20, 0, 100), i %  2 == 0 ? 0 : map(gestorPitch.filtradoNorm(), 0, 1, 60, 100));
    }
    
    
    if(i>190){
      stroke(i < lineas.length / 2 ? color1 + i / 2 : color2 + i / 2, 100, i %  2 == 0 ? 0 : map(gestorPitch.filtradoNorm(), 0, 1, 60, 100)-map(i,190,222,0,60));
    
    }
     
    offset = i > lineas.length / 2 - 1 ? rnd : int(map(i, 0, lineas.length / 2 - 1, rnd / 3, (rnd / 3) * - 1));
    lineas[i].setPosition(x(index+i), gros * i, width/2, gros * i - offset);
    lineas[i].drawLine();
    popStyle();
  }

  simulatePressing();
  index++;
}

float x(float t) {
  return sin(t/spacing) * angle_off;
}



//--------------CAMBIAR LIMITES DEL HUE-------------------

void simulatePressing() {
  //println(angle_off);
  if (haySonido ) {
    angle_off = map(gestorAmp.filtradoNorm(), 0, 1, 40, 200) ;
    println("aa");
  } else if (!haySonido && angle_off > 40) {
    angle_off -- ;
  }
}



void cambiarColor() {

  if (frameCount % 3 == 0 && gestorPitch.filtradoNorm() > 0.6 && haySonido) {
    limits[0] --;
    limits[1] --;
    limits[2] ++;
    limits[3] ++;
  } else if (frameCount % 3 == 0 && gestorPitch.filtradoNorm() < 0.6 && haySonido) {
    limits[0] ++;
    limits[1] ++;
    limits[2] --;
    limits[3] --;
  }
  //DEVOLVER AL COLOR ORIGINAL
  if (!haySonido && frameCount % 3 == 0) {
    if (limits[0]<limits2[0]) {
      limits[0]++;
    } else {
      limits[0]--;
    }
    if (limits[1]<limits2[1]) {
      limits[1]++;
    } else {
      limits[1]--;
    }
    if (limits[2]<limits2[2]) {
      limits[2]++;
    } else {
      limits[2]--;
    }
    if ( limits[3]<limits2[3]) {
      limits[3]++;
    } else {
      limits[3]--;
    }
  }
}
