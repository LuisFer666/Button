public class Button{
  private float x;
  private float y;
  private float widthField;
  private float heightField;

  private color bgColor;
  private color borderColor;

  private color mouseOverColor;
  private color mouseOverBorderColor;

  private color clickedColor;
  private color clickedBorderColor;

  private boolean mouseOver;
  private boolean clicked;
  
  private String text;

  public Button(String text){
    this.text = text;

    this.x = 0;
    this.y = 0;
    this.widthField = 0;
    this.heightField = 0;

    this.bgColor = color(225, 225, 226);
    this.borderColor = color(173, 173, 173);

    this.mouseOverColor = color(229,241,251);
    this.mouseOverBorderColor = color(0, 120, 215);
    
    this.clickedColor = color(204,228,247);
    this.clickedBorderColor = color(0, 84, 153);

    this.mouseOver = false;
    this.clicked = false;
  }

  public void setBounds(float x, float y, float widthField, float heightField){
    this.x = x;
    this.y = y;
    this.widthField = widthField;
    this.heightField = heightField;
  }
  
  public void draw(){
    colorMode(RGB, 255, 255, 255);
    if(mouseOver){
      if(clicked){
        stroke(clickedBorderColor);
        fill(clickedColor);
      }else{
        stroke(mouseOverBorderColor);
        fill(mouseOverColor);
      }
    }else{
      stroke(borderColor);
      fill(bgColor);
    }
    rect(x, y, widthField, heightField);

    colorMode(RGB, 255);
    fill(0);
    textSize(20);
    text(text, this.x + (this.widthField - textWidth(text))/2, this.y + (this.heightField)/2 );
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
