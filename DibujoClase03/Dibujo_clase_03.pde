int xANT = 0;
int yANT = 0;

void setup () { // config previas

  size(800, 800); // anchura y altura
}

void draw () {

  // line(mouseX, mouseY, mouseX, mouseY); hacer esto seria lo mismo q hacer el point
  // point(mouseX, mouseY); esto no genera una linea recta ya que el mouse tiene microsaltos y no marca pixel por pixel cada posicion
 
  if (mousePressed) { // mousePressed es un booleano, si esta presionado V sino F
    line(mouseX, mouseY, pmouseX, pmouseY); // mouse para marcar la posicion actual del mouse en x y pmouse para marcar la posicion anterior del mouse la p es de previo
  }
  println("pos actual", mouseX, mouseY,
    "pos anterior", pmouseX, pmouseY); // marca la posicion del mouse
}
