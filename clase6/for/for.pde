// FOR o Ciclo For, o Bucle, O loop
// MAP

float valorProporcional;
float valorDeColor;
void setup() {

  size(960, 960);
}

void draw() {


  background(0);

  pushStyle();
  noStroke();
  for (int i = 0; i <= width; i = i + width/ 50 ) {


    valorProporcional = map(i, 0, width, mouseY, 0);

    fill(valorProporcional);

    rect(i, 0, width/10, height);

    circle(mouseX - width/2 + i, mouseY, width/10);
  }

  popStyle();
}
