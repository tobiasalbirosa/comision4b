//void funcionDibujar() {

//  pushStyle();

//  background(0);
//  stroke(255);
//  line(0, height/2, width, height/2);
//  line(width/2, 0, width/2, height);


//  if (retornaCuadrante() == 0) {

//    rect(0, 0, width/2, height/2);
//    // FUNCION IMAGE QUE LLAMA A LA IMAGEN DECLARADA
//    // Y LA DIBUJA EN LAS COORDENADAS ASIGNADAS
//    // Y EL TAMAÑO ASIGNADO 
    
//    opacidad++;

//    if (opacidad > 255) {
//      opacidad = 255;
//    }

//    tint(opacidad);
//    image(imagen0, 0, 0, width/2, height/2);
    
//  } else if (retornaCuadrante() == 1) {

//    rect(width/2, 0, width/2, height/2);

//    image(imagen1, width/2, 0, width/2, height/2);
//  } else if (retornaCuadrante() == 2) {

//    rect(0, height/2, width/2, height/2);

//    image(imagen2, 0, height/2, width/2, height/2);
//  } else {

//    rect(width/2, height/2, width/2, height/2);
//    image(imagen3, width/2, height/2, width/2, height/2);
    
//  }
//  popStyle();
//}
//void estados() {

//  println("Hola estoy en estados");
//}

//int retornaCuadrante() {

//  if (mouseX < width/2 && mouseY < height/2) {
//    return 0;
//  } else if (mouseX > width/2 && mouseY < height/2) {

//    return 1;
//  } else if (mouseX < width/2 && mouseY > height/2) {

//    return 2;
//  } else {

//    return 3;
//  }
//}

//String retornaElValor() {
//  // || = OR , "o"

//  if (mouseY > height/2 || mouseX > width/2) {

//    return "string";
//  } else {

//    return  "otra cosa";
//  }
//}
