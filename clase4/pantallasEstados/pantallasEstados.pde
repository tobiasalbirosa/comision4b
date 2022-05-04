//ESTADOS Y PANTALLAS

int numPantalla;
int contador;
int maxPantallas;

float posInicialEnXPantalla;
float posInicialEnYPantalla;

float posInicialEnXTexto;
float posInicialEnYTexto;

float opacidad;

void setup() {
  size(480, 480);
  textSize(48);
  numPantalla = 0;
  maxPantallas = 4;
  posInicialEnXPantalla = 0;
  posInicialEnYPantalla = 0; // --

  posInicialEnXTexto = width/2;
  posInicialEnYTexto = height; // --

  opacidad = height;
}

void draw() {

  background(0);

  estados();
}

void mouseMoved() {

  println("Mouse detectado X:", mouseX, "Y: ", mouseY);
}
