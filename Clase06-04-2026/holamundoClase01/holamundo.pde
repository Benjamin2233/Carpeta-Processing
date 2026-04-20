int x = 0; // Creo la variable X

void setup(){  // Es lo primero que se inicia al arrancar el programa, se utiliza para configuraciones

size(800,600); // 800 ancho (x) 600 alto (y)

}   
void draw(){ // se ejecuta luego del setup, se ejecuta todo el tiempo a menos de que sea indicado

background(255); // fondo de color (Como estamos en el void draw q es constante se queda para siemppre)
line(x,500,200,300); //Line x,y primer punto , x2,y2 segundo punto

x = x + 1; // Al estar en el void draw, se suma 1 a X constantemente, y como tengo X en la prrimer posicion del line, se desplaza hacia la derecha)

println("La posicion de x es" , x); // Da un mensaje en la consola, en este caso es "La poscion de x es (VALOR DE X)

}
