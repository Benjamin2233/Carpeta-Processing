void setup() {
  size(1000, 1000);
   background(178, 255, 255); 
}

void draw() {
 

  
  
    if (mousePressed) { 
        dibujarpiso();
        dibujacasa (); 
        dibujosol () ;
        dibujotecho ();
        dibujopuerta () ;
        line(mouseX, mouseY, pmouseX, pmouseY); 
  }
  
  
}


 void dibujarpiso () {
  fill(0, 255, 0);
  rect(0, height*0.75, width, height*0.25);
 }
 
  void dibujacasa () {
  fill(150, 75, 0);
  rect(width/2, height/1.75, width/3, height/5.5);
 }
 
   void dibujopuerta () {
  fill(255, 0, 0);
  rect(width/1.8, height/1.635, width/10, height/7);
 }
 
 void dibujosol () {
 fill(255, 255, 0);
 ellipseMode(CORNER);
 ellipse(width/10,height/10,width/4.5,height/4.5);
 }
 
void dibujotecho () {
fill(128, 128, 128);
triangle(width/2, height/1.75, width/1.20, height/1.75, width/1.50, height/2);

 }
