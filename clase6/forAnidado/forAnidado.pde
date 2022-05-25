// CICLO FOR ANIDADO
float ancho;
float alto;
color varDeColor;
void setup() {

  size(960, 960);
  ellipseMode(CORNER);

  varDeColor = color(255);
}

void draw() {

  ancho = width/10;
  alto = height/10;

  background(0);

  for (int i =0; i <= width; i += ancho) {
    for (int j =0; j <= height; j += alto) {

      println("En eje X (i), el valor es: ", i);
      println("En eje Y (j), el valor es: ", j);

      tester(i, j);

      fill(varDeColor);

      rect(i, j, ancho, alto);
      fill(0);
      text("X: "+ i + "Y: "+ j, i, j);
    }
  }
}

void tester(int i, int j) {
  if (mouseX > i &&
    mouseX < i + ancho &&
    mouseY > j &&
    mouseY < j+alto) {
    varDeColor = 0;
  } else {
    varDeColor = 255;
  }
}

void mouseMoved() {

  for (int i =0; i <= width; i += ancho) {
    for (int j =0; j <= height; j += alto) {
    }
  }
}
