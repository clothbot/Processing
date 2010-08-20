// DXF Tests.
// - creates DXF files.
// - bug in Mac OS X (and others?) makes dxf n*8192 byte truncated files=

import processing.dxf.*;

PGraphics pgDxf;

void setup() {
  size(screen.width/2, screen.height/2, P2D);
  background(153);
}

void draw() {
  noLoop();
  for(int count=0;count<10;count++) {
    background(153);
    pgDxf=createGraphics(screen.width/2,screen.height/2,DXF,"DXF.createGraphics."+count+".dxf");
    pgDxf.beginDraw();
    for(int i=0;i<count;i++) {
     for(int j=0;j<100;j++) {
      pgDxf.line(2*i,2*j,2*(i+1),2*(j+1));
      line(2*i,2*j,2*(i+1),2*(j+1));
     }
    }
    pgDxf.endDraw();
  }
}

