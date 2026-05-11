int filas = 10;
int columnas = 10;

int tam = 50;

boolean[][][] laberinto = new boolean[filas][columnas][6];

void setup() {

  size(500, 500);

 
  for (int f = 0; f < filas; f++) {

    for (int c = 0; c < columnas; c++) {

      for (int l = 0; l < 6; l++) {

        laberinto[f][c][l] = random(1) > 0.5;
      }
    }
  }
}

void draw() {

  background(255);

  for (int f = 0; f < filas; f++) {

    for (int c = 0; c < columnas; c++) {

      int x = c * tam;
      int y = f * tam;

   
      if (laberinto[f][c][0]) {
        line(x, y, x + tam, y);
      }

      if (laberinto[f][c][1]) {
        line(x + tam, y, x + tam, y + tam);
      }

      if (laberinto[f][c][2]) {
        line(x, y + tam, x + tam, y + tam);
      }
      
      if (laberinto[f][c][3]) {
        line(x, y, x, y + tam);
      }
     
      if (laberinto[f][c][4]) {
        line(x, y, x + tam, y + tam);
      }
    
      if (laberinto[f][c][5]) {
        line(x + tam, y, x, y + tam);
      }
    }
  }
}
