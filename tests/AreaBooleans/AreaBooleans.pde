// Testing 2D boolean operation using Java built-in Area construct.
// - extending example from http://wiki.processing.org/w/Using_AWT's_Polygon_class
// - added gridScale parameter to handle int-only shapes like Polygons and general point-snapping.

Poly p1,p2;
Area2D a1,a2,a3;
float gridScale=0.01;
 
void setup() {
  size(200,200);
  int[]x={ 20,40,40,60,60,20 };
  int[]y={ 20,20,40,40,60,60 };
  p1=new Poly(gridScale,x,y,6);
  p2=new Poly(gridScale,x,y,6);
  p2.translate(20,20);
  a1=new Area2D(p1);
  a2=new Area2D(p2);
  a3=new Area2D(gridScale);
  a3.add(a1);
  a3.intersect(a2);
}
 
void draw(){
  background(255);
  fill(255);
  if(a3.contains(mouseX,mouseY)) {
    fill(255,255,0);
    a3.drawMe();
  } else if(p1.contains(mouseX,mouseY)) {
    fill(255,0,0);
    p1.drawMe();
  } else if(p2.contains(mouseX,mouseY)) {
    fill(0,255,0);
    p2.drawMe();
  } else {
    p1.drawMe();
    p2.drawMe();
  }
}

