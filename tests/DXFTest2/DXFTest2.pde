// DXF Tests.
// - creates layered DXF files.

import processing.dxf.*;

RawDXF pgDxf;

void setup() {
  size(screen.width/2, screen.height/2, P2D);
  background(153);
}

void draw() {
  noLoop();
  pgDxf=(RawDXF) createGraphics(screen.width/2,screen.height/2,DXF,"DXF.createGraphics.dxf");
  beginRaw(pgDxf);
  for(int count=0;count<10;count++) {
    pgDxf.setLayer(count);
    background(153);
    for(int i=0;i<100;i++) {
     for(int j=0;j<count;j++) {
      pgDxf.line(2*i,2*j,2*(i+1),2*(j+1));
      line(2*i,2*j,2*(i+1),2*(j+1));
     }
    }
  }
  endRaw();
}

