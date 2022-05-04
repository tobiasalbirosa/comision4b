PFont fuente;
PFont fuenteExterna;

boolean click;

void setup() {

  size(960, 960);

  fuente = loadFont("bodoni.vlw");

  fuenteExterna = createFont("Games.ttf", 48);

  textFont(fuenteExterna);
}

void draw() {

  background(0);

  if (!click) {
    textFont(fuenteExterna);
  } else {
    textFont(fuente);
  }

  text("Hola", width/2, height/2);

  if (click) {
    textFont(fuenteExterna);
  } else {
    textFont(fuente);
  }

  text("Chau", width/2, height/1.5);
}

void mousePressed() {
  click = !click;
  if (click) {
    //  textFont(fuente);
  } else {
    // textFont(fuenteExterna);
  }
}
