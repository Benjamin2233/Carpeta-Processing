int filas = 20;
int columnas = 20;

int tam;

float[][] distancias;

void setup() {

  size(600, 600);

  tam = width / columnas;

  distancias = new float[filas][columnas];
}

void draw() {

  background(0);

  for (int f = 0; f < filas; f++) {

    for (int c = 0; c < columnas; c++) {

      int x = c * tam;
      int y = f * tam;

      float centroX = x + tam/2;
      float centroY = y + tam/2;

      float d = dist(centroX, centroY, mouseX, mouseY);

      distancias[f][c] = d;

      float gris = map(d, 0, width, 255, 0);

      gris = constrain(gris, 0, 255);

      fill(gris);
      stroke(50);

      rect(x, y, tam, tam);
    }
  }
}
