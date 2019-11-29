import processing.video.*;
import gab.opencv.*;
import java.awt.*;
Capture cam;
OpenCV opencv;
dada d;
ArrayList <Contour> losCountours;
PImage p1;
int cambio;
void setup(){
  size(640,360);
  println(Capture.list());
  cam = new Capture(this,Capture.list()[0]);
  opencv = new OpenCV(this,640,480);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  d = new dada();
  cam.start();
  p1 = loadImage("p1.jpg");
}
void draw(){
  switch(cambio){
    case 0:
    image(p1,0,0,640,360);
    if(key == 'a'){
      cambio = 1;
    }
    break;
    case 1:
    d.deteccion();
    break;
  }
}
void captureEvent(Capture c) {
  c.read();
}
