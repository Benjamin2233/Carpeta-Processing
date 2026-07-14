class Movil {
  PVector pos;
  PVector vel;
  int r = 10;
  
  Movil(float posX, float posY, float velX, float velY) {
    pos = new PVector(posX, posY);
    vel = new PVector(velX, velY);
  }
  
  void mover() {
    pos.add(vel);
  }
  
  void mostrar() {
    ellipse(pos.x, pos.y, r, r);
  }
  
  void rebotar() {
    if (pos.x > width-r/2 || pos.x <= r/2) {
      vel.x = vel.x*-1;
    }
    if (pos.y > height-r/2 || pos.y <= r/2) {
      vel.y = vel.y*-1;
    }
  }
  
  float distanciaAlCentro() {
    PVector centro = new PVector(width/2, height/2);
    return PVector.dist(pos, centro);
  }
  
  void mostrarSiCerca(float radio) {
    if (distanciaAlCentro() < radio) {
      mostrar();
      line(pos.x, pos.y, width/2, height/2);
    }
  }
}

Movil[] m;
int cant = 10;
float radio = 150;

void setup() {
  size(800, 600);
  m = new Movil[cant];
  for (int i=0; i<cant; i++) {
    float posX = random(width);
    float posY = random(height);
    float velX = random(-5, 5);
    float velY = random(-5, 5);
    m[i] = new Movil(posX, posY, velX, velY);
  }
}

void draw() {
  background(100);
 
  ellipse(width/2, height/2, radio*2, radio*2);
  
  for (int i=0; i<cant; i++) {
    m[i].mover();
    m[i].rebotar();
    m[i].mostrarSiCerca(radio);
  }
}
