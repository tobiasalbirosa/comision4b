//if = si...
//else = sino

/*
 
 COMPARADORES
 
 > mayor que
 
 < menor que 
 
 >= mayor o igual
 
 <= mayor o igual
 
 == igual
 
 */


float posX;

float direccion = 0;

boolean estoyEnEl1;

color colorDelBoton = color(255, 20, 20);
color colorDelBotonCircular = color(255, 255, 120);
color colorDelCirculoEnMovimiento = color(0);
void setup() {

  size(400, 400);
  rectMode(CENTER);
  // Ya viene por defecto:
  ellipseMode(CENTER);
}

//OPERADORES LOGICOS
// && "y"
// || "o"

void draw() {

  background(255);
  fill(255, 0, 0);
  rect(mouseX, mouseY, width/12, height/12);

  fill(colorDelCirculoEnMovimiento);
  circle(posX += direccion, height/6, width/8);

  fill(colorDelBoton);
  rect(width/4, height/2, width/4, height/4);

  fill(colorDelBotonCircular);
  circle(width-width/4, height/2, width/4);

  if (posX >= width && direccion == 1) {
    direccion *= -1;
  }
  if (posX <= 0 && direccion == -1) {
    direccion *= -1;
  }
}
void mouseClicked() {
  // CLICK BOTON IZC / RECTANGULAR
  if (mouseX >=  width/8 
    && mouseX <= width/4 + width/8
    && mouseY >= height/2 - height/8
    && mouseY <= height/2 + height/8) {
    println("click 1");
    direccion = -1;
  }

  if (dist(mouseX, mouseY, width-width/4, height/2) <= width/8) {
    println("click 2");
    direccion = 1;
  }
}
void mouseMoved() {

  if (mouseX >=  width/8 
    && mouseX <= width/4 + width/8
    && mouseY >= height/2 - height/8
    && mouseY <= height/2 + height/8) {
    colorDelBoton = color(255, 120, 120);
    estoyEnEl1 = true;
  } else {
    colorDelBoton = color(255, 20, 20);
    estoyEnEl1 = false;
  }

  line(mouseX, mouseY, width-width/4, height/2);

  if (dist(mouseX, mouseY, width-width/4, height/2) <= width/8) {
    colorDelBotonCircular = color(255, 255, 120);
  } else {
    colorDelBotonCircular = color(20, 255, 20);
  }



  if (dist(mouseX, mouseY, posX, height/6 ) <= width/8) {

    println("Estoy en el circulo");
    colorDelCirculoEnMovimiento = color(0, 0, 255);
    direccion *= -1;
  } else {
    println("no estoy");
    colorDelCirculoEnMovimiento = color(0);
  }
}
