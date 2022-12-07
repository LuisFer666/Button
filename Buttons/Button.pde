public class Button{
  private float x;
  private float y;
  private float widthField;
  private float heightField;
  
  private color bgColor;
  private color mouseOverColor;
  private color borderColor;
  private color clickedColor;
  
  private boolean mouseOver;
  private boolean clicked;
  
  public Button(float x, float y, float widthField, float heightField){
    this.x = x;
    this.y = y;
    this.widthField = widthField;
    this.heightField = heightField;
    int r=224,g=194,b=134;
    this.bgColor = color(224, 194, 134);
    this.mouseOverColor = color(r-50,g-50,b-50);
    this.clickedColor = color(r-100,g-100,b-100);
    this.borderColor = color(0);
    this.mouseOver = false;
    this.clicked = false;
  }
  
  public void draw(){
    colorMode(RGB, 255, 255, 255);
    stroke(borderColor);
    if(mouseOver){
      if(clicked){
        fill(clickedColor);
      }else{
        fill(mouseOverColor);
      }
    }else{
      fill(bgColor);
    }
    rect(x, y, widthField, heightField);
  }
  
  public void mouseMoved(){
    if(mouseX >= this.x && mouseX <= this.x + this.widthField){
      if(mouseY >= this.y && mouseY <= this.y + this.heightField){
        mouseOver = true;
      }else{
        mouseOver = false;
      }
    }else{
      mouseOver = false;
    }
  }
  
  public void mouseClicked(){
    if(mouseOver){
      println("Click");
    }
  }
  
  public void mousePressed(){
    if(mouseOver){
      clicked = true;
    }else{
      clicked = false;
    }
  }
  
  public void mouseReleased(){
    if(mouseOver){
      clicked = false;
    }
  }
  
}
