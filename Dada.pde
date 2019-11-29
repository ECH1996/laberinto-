class dada{
  dada(){
  }
  void deteccion(){
    if(cam.width!= 0){
      opencv.loadImage(cam);
      image(cam,0,0);
      Rectangle[] caras = opencv.detect();
      opencv.threshold(80);
      opencv.loadCascade(OpenCV.CASCADE_MOUTH);
      println(caras.length);
      for(Rectangle r:caras){
        noFill();
        image(cam.get(r.x+10,r.y+10,r.width/2,r.height/2),r.x,r.y);
      }
    }
  }
}
