void setup () { // Seteos
  
size(800,540); // Tamaño de la pantalla
}

void draw () { // Se ejecuta constantemente, sin esto seria una imagen fija

  int w = width;
  int h = height;
  
  // background(200) ; // Es el color del fondo, DETALLES: Si no pusiera el background, no habria fondo, por lo tanto se imprimirian nuevas lineas cuando muevo el mouse, y quedaria como un lienzo rallado
  
  stroke(0,30); // Primer parametro color segundo parametro la transparencia 
  line(mouseX,mouseY,0,0); // Vertice superior izq
  line(mouseX,mouseY,w,0);  // Vertice superior der
  line(mouseX,mouseY,0,h); // Vertice inferior izq 
  line(mouseX,mouseY,w,h); // Vertice inferior der 

  
  /* PUNTO 1 X,Y  X2, Y2 PUNTO 2. 
  mouseX mouseY estas variables toman la posicion de x y segun cada una (importante escribirlas asi pq sino no te las toma)
  width (anchura) es el punto mas ancho de la pantalla, en este caso como es size(800,540) seria 800, height (altura) es el punto mas bajo de la pantalla en este caso 540
  Width y height funcionan como variable, es decir que se podria hacer "width/2,height/2" y marcarias la mitad del lienzo  */
  
  
  
  println("hola"); // El println imprime un mensaje en la consola, hacer esto nos permite darnois cuenta que el void draw ejecuta constantemente las linea de codigo que tiene
  
}
