//INTERACCIONES
float tamanioDelRect;
float posX;
float direccion = 0;

color colorDeRectangulo = color(0, 255, 0);

color colorDeFondo = color(0, 0, 0);


int movmiento;

void setup() {
  size(400, 400);
  tamanioDelRect = width/10;
}

void draw() {

  background(colorDeFondo);
  fill(colorDeRectangulo);
  rect(posX += direccion, height/2, tamanioDelRect, tamanioDelRect );
}

void mousePressed() {

  colorDeRectangulo = color(0, 255, 0);
  //  println("Mouse presionado: " , mouseX, mouseY);
  direccion = 1;

  //posX += 5;
}
void mouseClicked() {
  posX = width/2;
  //  println("Mouse clickeado: ",  mouseX, mouseY);
}

void mouseMoved() {
  movmiento++;
  println(movmiento);
  colorDeFondo = color( random(90, 100), 0, 0);
}

void keyPressed() {

  direccion = -1;
  colorDeRectangulo = color(0, 0, 255);
  //println("Tecla presionada: ",  key, keyCode);
}

void mouseWheel(MouseEvent event) {

  float e = event.getCount();
  direccion = e;
}
