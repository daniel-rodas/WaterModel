
public class Particle  {
  float fillColor = random(50);
  protected int[] location = new int[4];
  protected float[] particleColor = new float[4];
  
  Particle(){
      location[0] = (int) Math.floor( random( 550 ) ); // X
      location[1] = (int) Math.floor( random( 450 ) ); // Y
      location[2] = (int) Math.floor( random( 9 ) ); // Width
      location[3] = (int) Math.floor( random( 6 ) ); // Height
  }
  
  public void init()
    {
    }
    
    public void setup()
    {
      
    }
    
    public void draw()
    {
      circle();
    }
    
    public void circle()
    {
    noStroke();
      ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
        fill(random(245));  // Set fill to white
        ellipse( location[0] + 100 , location[1], location[2], location[2] );  // Draw white ellipse using RADIUS mode
        
      ellipseMode(CENTER);  // Set ellipseMode to CENTER
        fill( particleColor[0], particleColor[1], particleColor[2], particleColor[3] ); // Set fill to gray
        ellipse( location[0] + 100 , location[1], location[2], location[2] );   // Draw gray ellipse using CENTER mode
    }
    
    public void flyingSpaceShip()
    {
      
    ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
        fill(random(244));  // Set fill to white
        ellipse(mouseX,mouseY,random(50),random(40));  // Draw white ellipse using RADIUS mode
    ellipseMode(CENTER);  // Set ellipseMode to CENTER
        fill(100);  // Set fill to gray
        ellipse(random(width),random(height), random(30),random(30));  // Draw gray ellipse using CENTER mode
    }
}
