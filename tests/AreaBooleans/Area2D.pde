// Testing 2D boolean operation using Java built-in Area construct.
// - extending example from http://wiki.processing.org/w/Using_AWT's_Polygon_class
import java.awt.geom.AffineTransform;
import java.awt.geom.Area;
import java.awt.geom.PathIterator;
import java.awt.Polygon;

class Area2D extends Area{
  public Area2D(Poly p) {
    super( (Polygon) p );
  }
  public Area2D() {
    super();
  }
  
  void drawMe(){
    PathIterator pathIter=getPathIterator(new AffineTransform());
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

