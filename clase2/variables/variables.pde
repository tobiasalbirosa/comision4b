//VARIABLES

//CREACION

//DEFINIMOS TIPO Y NOMBRE DE LA VARIABLE:
//TIPOS [ Enteras, Flotantes, String, Boolean, etc.]

// NUMEROS ENTEROS
int numeroEntero;
int tamanioDeTexto;
int tamanioDeRect;

// NUMEROS FLOTANTES / CON DECIMALES
float numeroDecimal;

// TEXTOS

String texto = " Hola Variables en Processing \n Esta es una segunda linea";


void setup() {

  size(400, 400);
  
  numeroEntero = 0;
  tamanioDeTexto = 24;
  numeroDecimal = 0.0;
  tamanioDeRect = 50;
  textSize(tamanioDeTexto);

  background(0);
}

void draw() {


  background(0);
  fill(255);

  //USO

  textSize(tamanioDeTexto);
  text(texto, 0, 24);

  textSize(tamanioDeTexto/1.2);
  text("numeroEntero: " +    numeroEntero, 0, height - tamanioDeTexto);
  text("numeroDecimal: " +   numeroDecimal, width/2, height - tamanioDeTexto);

  // Sumar (Incrementar ++ o +=), restar (Decrementear -- o -=), dividir, o multiplicar

  numeroEntero += 1;

  numeroDecimal += .5;


  println(numeroEntero);

  stroke(255);
  
  noFill();
  
  circle(width/2, height/2, numeroDecimal);
  fill(255, numeroEntero, numeroEntero);

  rect( (width - tamanioDeRect) - numeroDecimal, height/2, tamanioDeRect, tamanioDeRect);
}
