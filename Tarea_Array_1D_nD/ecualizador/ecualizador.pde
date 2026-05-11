int cantidad = 20;
int[] barras = new int[cantidad];

int anchoBarra;

void setup() {
  size(800, 400);

  anchoBarra = width / cantidad;

 
  for (int i = 0; i < cantidad; i++) {
    barras[i] = height / 2;
  }
}

void draw() {
  background(50);

  for (int i = 0; i < cantidad; i++) {

    int x = i * anchoBarra;
    int h = barras[i];

    fill(0,0, 255);
    rect(x, height - h, anchoBarra - 2, h);
  }

  if (mousePressed) {

    int indice = mouseX / anchoBarra;
    

    if (indice >= 0 && indice < cantidad) {

      int nuevaAltura = height - mouseY;

      nuevaAltura = constrain(nuevaAltura, 0, height);

      barras[indice] = nuevaAltura;
    }
  }
}
