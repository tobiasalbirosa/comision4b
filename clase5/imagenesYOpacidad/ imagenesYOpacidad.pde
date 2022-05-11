// Nro de legajo
// Nombre y apellido
// Comsion 4b

PImage imagen0, imagen1, imagen2, imagen3;

float opacidad = 0;

void setup() {

  size(960, 960);
  textSize(48);

  imagen0 = loadImage("vuelta.jpg");
  imagen1 = loadImage("perro.jpg");
  imagen2 = loadImage("ave.jpg");
  imagen3 = loadImage("edificios.jpg");
}

void draw() {



  println(retornaCuadrante());

  funcionDibujar();
}
