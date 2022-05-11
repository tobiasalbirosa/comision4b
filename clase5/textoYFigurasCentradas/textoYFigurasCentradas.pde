// Nro de legajo
// Nombre y apellido
// Comsion 4b
color fondo = color(0);

color figura = color(255, 0, 0);

String  texto = "Lead  Engine Programmer  \n"+
  "Christer Ericson  \n"+
  " \n"+
  "Desings \n"+
  "Level Desing and Scripting  \n"+
  "Ashley A. Morgan ";

void setup() {

  size(480, 480);
  textSize(16);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
}

void draw() {

  background(fondo);

  fill(figura);

  rect(width/2, height/2, width/2, height/2);

  fill(fondo);

  circle(width/2, height/2, width/2);


  fill(figura);
  text(texto, width/2, height/2);
}
