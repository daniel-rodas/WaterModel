
public class MoleculePApplet  {
  
    public void setup() {
      noFill();
    size(200,200);
  }

  public void draw() {
        background(255, 0);

    if (mousePressed) {
      print("mousePressed Particle PApplet");
      line(mouseX,mouseY,pmouseX,pmouseY);
      redraw();
    }
    noLoop();
//    doStuff();
  }
  
  
//
//  public void doStuff(){
//      arc(150, 55, 50, 50, 0, HALF_PI);
//      
//      arc(50, 55, 60, 60, HALF_PI, PI);
//      arc(50, 55, 70, 70, PI, PI+QUARTER_PI);
//      arc(50, 55, 80, 80, PI+QUARTER_PI, TWO_PI);
//  }
}
