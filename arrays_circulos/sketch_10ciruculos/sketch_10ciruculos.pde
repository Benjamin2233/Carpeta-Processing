int[] x = new int[10];
int[] y = new int[10];

int indice = 0;

void setup() {

  size(600, 400);
}

void draw() {

  background(0);
  
  for (int i = 0; i < 10; i++) {

    fill(255);

    ellipse(x[i], y[i], 30, 30);
  }
}

void mousePressed() {

  x[indice] = mouseX;
  y[indice] = mouseY;

  indice++;

  if (indice == 10) {

    indice = 0;
  }
}
