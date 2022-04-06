//"int" es para Processing, números enteros.
//"float" es para Processing, números flotantes, o con comas. 
//"char" es para Processing, caracteres. 
void setup() {

  size(400, 400);

  // R = red 0-255, G = green 0-255, B = blue 0-255

  background(255, 205, 0);

  frameRate(6);

  textSize(72);
}

void draw() {

  background(255, 205, 0);

  text(frameCount, 50, 150);
  stroke(127);
  strokeWeight(3);
  line(0, 150, 400, 150);

  stroke(0);
  strokeWeight(5);
  fill(255);
  circle(0, 0, 150);
  circle(400, 0, 150);

  rect(0, 200, 200, 200);

  rect(325, 325, 75, 75);
}
