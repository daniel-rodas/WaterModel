/**
 *
 * @author Rodas
 */

WaterMolecule water;
WaterMoleculeFactory waterFactory;
float temperature;


void setup()
{
  size(1024, 768);

  waterFactory = new WaterMoleculeFactory();


  frameRate(5);
}
void draw()
{
  background( 125, 135, 253 );
//  flyingSpaceShip(); 
  thermometer ();
  water = (WaterMolecule) waterFactory.getMolecule();
}

public void flyingSpaceShip()
{
  ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
  fill(random(244));  // Set fill to white
  ellipse(mouseX, mouseY, random(50), random(40));  // Draw white ellipse using RADIUS mode 

  ellipseMode(CENTER);  // Set ellipseMode to CENTER
  fill(100);  // Set fill to gray
  ellipse(random(width), random(height), random(30), random(30));  // Draw gray ellipse using CENTER mode
}

public void thermometer ()
{    
  if ( (mouseY < 200) && ( mouseY > 20))
    // Hot
    fill(245, 90, 20);
  temperature = 100.0;

  if ( (mouseY < 400) && ( mouseY > 200))
    // Warm
    fill(145, 174, 225);
   
  temperature = 85;  
  if ( (mouseY < 600 ) && ( mouseY > 400))
    // Cold  
    fill(65, 65, 125);
  temperature = 50;      
  if ( (mouseY < 700) && ( mouseY > 600 ) ) 
    // Freezing
    fill(244, 244, 252); 
  temperature = 10;       

  rect(900, 20, 95, 700, 3, 6, 12, 18);
  noFill();
}

