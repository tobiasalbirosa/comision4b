void estados() {

  contador++;
  opacidad--;

  if (contador >= height) {

    contador = 0;
    opacidad = height;

    if (numPantalla < maxPantallas) {

      numPantalla++;
    } else {

      numPantalla = 0;
    }
  }

  println("Contador: "+contador, "Pantalla: " +numPantalla);


  miFuncionParaDibujarPantallas(numPantalla, contador, opacidad);
}

void miFuncionParaDibujarPantallas(int numeroDePantallaParaLaFuncion, int contador, float opacidad) {

  pushStyle();

  fill(255);
  rect(posInicialEnXPantalla, posInicialEnYPantalla, width, height);

  fill(0);
  textAlign(CENTER);


  fill(0, contador);
  text("Num de pantalla: " + numeroDePantallaParaLaFuncion, posInicialEnXTexto, posInicialEnYTexto-contador);
  // NUMERO DE PANTALLA
  // PUEDE IR TAMBIEN:
  // TEXTO
  // COLOR
  popStyle();
}


void miFuncionParaDibujar() {

  pushStyle();
  fill(255);
  rect(0, 0, width, height);
  fill(0);
  ellipse(0, 0, width, height);

  text("Hola", width/4, height/2);

  popStyle();
}

void dibujarOtraCosa() {

  pushStyle();

  fill(255, 0, 0);
  triangle(0, 0, width, 0, width, height);

  popStyle();
}
