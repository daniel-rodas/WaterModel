/**
 *
 * @author Rodas
 */

float xOrigin;
float yOrigin;

float zoom = 1;
float angle = 0;

WaterMolecule water;
WaterMoleculeFactory waterFactory;
float temperature;


void setup()
{
  size(1024, 768);
  
  xOrigin = width/2;
  yOrigin = height/2;
  
  
  waterFactory = new WaterMoleculeFactory();


  frameRate(4);
}
void draw()
{
  background( 125, 135, 253 );
  translate(xOrigin, yOrigin);
  scale(zoom);
  rotate(angle);
//  flyingSpaceShip(); 
  thermometer ();
  water = (WaterMolecule) waterFactory.getMolecule();
}

void keyPressed() {
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      zoom += 0.03;
    }
    else if (keyCode == DOWN)
    {
      zoom -= 0.03;
    }
    else if (keyCode == RIGHT)
    {
      angle += 0.03;
    }
    else if (keyCode == LEFT)
    {
      angle -= 0.03;
    }
  }
  
  if (key == ' ')
  {
    angle = 0;
    zoom = 1;
    xOrigin = width/2;
    yOrigin =height/2;
  }
}

void mouseDragged()
{
  xOrigin = xOrigin + (mouseX - pmouseX);
  yOrigin = yOrigin + (mouseY - pmouseY);
}

public void flyingSpaceShip()
{
  ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
  fill(random(244));  // Set fill to white
  ellipse(mouseX, mouseY, random(50), random(40));  // Draw white ellipse using RADIUS mode 
  println("mouseX ");
  print(mouseX);
  println("mouseY ");
  print(mouseY);

  ellipseMode(CENTER);  // Set ellipseMode to CENTER
  fill(100);  // Set fill to gray
  ellipse(random(width/2), random(height/2), random(30), random(30));  // Draw gray ellipse using CENTER mode
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

  rect(360, -340, 95, 700, 3, 6, 12, 18);
  noFill();
}

