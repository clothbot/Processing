// Testing 2D boolean operation using Java built-in Area construct.
// - extending example from http://wiki.processing.org/w/Using_AWT's_Polygon_class

class Area2D extends java.awt.geom.Area{
  public Area2D(Poly p) {
    super( (java.awt.Polygon) p );
  }
  public Area2D() {
    super();
  }
  
  void drawMe(){
    java.awt.geom.PathIterator pathIter=getPathIterator(new java.awt.geom.AffineTransform());
    beginShape();
    float[] newCoords={0,0};
    while(!pathIter.isDone()) {
      pathIter.currentSegment(newCoords);
      vertex(newCoords[0],newCoords[1]);
      pathIter.next();
    }
    endShape();
  }
}

