// Nro de legajo
// Nombre y apellido
// Comsion 4b

PImage imagen0, imagen1, imagen2, imagen3;
int tamX, tamY;
int contador;
int velocidad;
int pantalla;

void setup() {

  size(960, 960);
  imagen0 = loadImage("perro.jpg");
  imagen1 = loadImage("vuelta.jpg");

  imagen2 = loadImage("edificios.jpg");

  imagen3 = loadImage("ave.jpg");

  tamX = 0;
  tamY = 0;
  contador = 0;
  velocidad = 5;
  pantalla = 0;
  textSize(1);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
}

void draw() {

  contador+=velocidad;

  background(0);
  tint(contador/4);


  if (pantalla == 0) {

    pushStyle();

    image(imagen0, width/2, height/2, contador, contador);
    fill(255, 0, 0, contador/4);
    textSize(contador/4);
    text("imagen 0", width/2, height/2);

    popStyle();
  }


  if (pantalla == 1) {
    pushStyle();

    image(imagen1, width/2, height/2, contador, contador);
    fill(255, 0, 255, contador/4);
    textSize(contador/4);
    text("imagen 1", width/2, height/2);


    popStyle();
  }

  if (pantalla == 2) {

    image(imagen2, width/2, height/2, contador, contador);
    fill(0, 0, 255, contador/4);
    textSize(contador/4);
    text("imagen 2", width/2, height/2);
  }


  if (pantalla == 3) {

    image(imagen3, width/2, height/2, contador, contador);
    fill(255, 255, 0, contador/4);
    textSize(contador/4);
    text("imagen 3", width/2, height/2);
  }
  // R G B y ALPHA (Trasnparencia)

  if (contador >= 960) {
    contador = 0;
    pantalla++;

    if (pantalla >= 4 ) {
      pantalla = 0;
    }
  }
}
