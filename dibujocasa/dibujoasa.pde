void setup() {
  size(800, 600);
}

void draw() {
  background(178, 255, 255); // cielo

  dibujarpiso();
  dibujacasa (); 
  dibujosol () ;
  
    if (mousePressed) { 
    line(mouseX, mouseY, pmouseX, pmouseY); 
  }
  
  
}


 void dibujarpiso () {
  fill(0, 255, 0);
  rect(0, height*0.75, width, height*0.25);
 }
 
  void dibujacasa () {
  fill(150, 75, 0);
  rect(width/2, height/1.75, 200, 150);
 }
 
 void dibujosol () {
 fill(255, 255, 0);
 ellipseMode(CORNER);
 ellipse(50,20,200,200);
 }
 
