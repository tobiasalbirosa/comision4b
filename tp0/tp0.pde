void setup() {
  println("Setup");
  size(540, 540);
  background(0);
  //RGB
  stroke(0, 255, 0);
  strokeWeight(3);
  rectMode(CENTER);
  noCursor();
  smooth();
}

void draw() {
  background(0);

  println("Dibujando", height);
  //CAMBIO EL ANCHO DE LA LINEA

  strokeWeight(2);
  fill(255);
  rect(width/2, height/2, height/5, height/5);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);

  //CAMBIO EL ANCHO DE LA LINEA
  strokeWeight(15);
  noFill();
  circle(width/2, height/2, height/5);

  textSize(64);
  text("Hola", width/8, height/4);
  strokeWeight(5);

  triangle(width/2, 0, 0, height, width, height);
}
