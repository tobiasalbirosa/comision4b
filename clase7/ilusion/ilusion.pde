int segundos;
int segundoInicial;
int segundoReal;

void setup() {

  size(960, 960);

  background(255);

  segundos = 0;
  segundoInicial = second();
}

void draw() {
  println(obtenerSegundosDesdeYa());
  background(255);

  fill(0);

  for (int y = 0; y < height; y += height/6) {

    for (int x = 0; x < width; x += width/6) {

      rect(x + width/96, y + height/96, width/7, height/7);
    }
  }
}

void mousePressed() {

  reiniciarSegundos();
}
