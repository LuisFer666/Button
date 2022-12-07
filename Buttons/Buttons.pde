Button btnAceptar;

void setup(){
  size(300,300);
  btnAceptar = new Button("Aceptar");
  btnAceptar.setBounds(10,10,100,50);
}

void draw(){
  background(255);
  btnAceptar.draw();
}

void mouseMoved(){
  btnAceptar.mouseMoved();
}

void mouseClicked(){
  btnAceptar.mouseClicked();
}

void mousePressed(){
  btnAceptar.mousePressed();
}

void mouseReleased(){
  btnAceptar.mouseReleased();
}
