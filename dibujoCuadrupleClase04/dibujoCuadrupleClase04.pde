int xANT = 0;
int yANT = 0;

void setup () { // config previas

  size(800, 800); // anchura y altura
}

void draw () {

  // line(mouseX, mouseY, mouseX, mouseY); hacer esto seria lo mismo q hacer el point
  // point(mouseX, mouseY); esto no genera una linea recta ya que el mouse tiene microsaltos y no marca pixel por pixel cada posicion
 
  if (mousePressed) { // mousePressed es un booleano, si esta presionado V sino F
  
    line(mouseX, mouseY, pmouseX, pmouseY); //  bloque arriba izq (mouse para marcar la posicion actual del mouse en x y pmouse para marcar la posicion anterior del mouse la p es de previo)
    
     line(width-mouseX, mouseY, width-pmouseX, pmouseY); // bloque arriba derecha (resto la anchura a la posicion del mouse lo q genera como un efecto espejo)
     
     line(mouseX, height-mouseY, pmouseX, height-pmouseY); //bloque abajo izquierda
     
     line(width-mouseX, height-mouseY, width-pmouseX, height-pmouseY); // bloque abajo derecha
  }
  
  }
