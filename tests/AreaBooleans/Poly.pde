// Testing 2D boolean operation using Java built-in Area construct.
// - extending example from http://wiki.processing.org/w/Using_AWT's_Polygon_class

import java.awt.Polygon;
/*
 The class inherit all the fields, constructors and functions 
 of the java.awt.Polygon class, including contains(), xpoint,ypoint,npoint
*/
 
class Poly extends Polygon{
  float gridScale;
  
  public Poly(float gScale, int[] x,int[] y, int n) {
    super();
    gridScale=gScale;
    //call the java.awt.Polygon addPoint function
    for(int i=0;i<n;i++) {
      super.addPoint((int) round(x[i]/gridScale),(int) round(y[i]/gridScale));
    }
  }

  public Poly(float gScale, double[] x,double[] y, int n) {
    super();
    gridScale=gScale;
    println("Area2D gridScale="+gridScale);
    //call the java.awt.Polygon addPoint function
    for(int i=0;i<n;i++) {
      super.addPoint((int) (x[i]/gridScale),(int) (y[i]/gridScale));
    }
  }

  void translate(int x, int y) {
    super.translate((int) round(x/gridScale),(int) round(y/gridScale));
  }
  
  void translate(double x, double y) {
    super.translate((int) (x/gridScale),(int) (y/gridScale));
  }

  
  boolean contains(int x, int y) {
    double dx=x/gridScale;
    double dy=y/gridScale;
    return super.contains(dx,dy);
  }

  boolean contains(double x, double y) {
    double dx=x/gridScale;
    double dy=y/gridScale;
    return super.contains(dx,dy);
  }


  float getGrid() {
    return gridScale;
  }
 
  void drawMe(){
    beginShape();
    for(int i=0;i<npoints;i++){
      vertex(round(gridScale*xpoints[i]),round(gridScale*ypoints[i]));
    }
    endShape();
  }
}

