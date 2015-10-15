/**        
 *
 * @author Rodas
 */

import java.util.Random;
import controlP5.*;

ControlP5 cp5;
Random generator = new Random();

int horizontalSpacing = 90; // 150; // 180; 
int verticalSpacing = 90; // 150; // 180;
int seaSize = 3; //5; // 3;

int Temperature = 100;
boolean toggleBg;

float xOrigin;
float yOrigin;

float zoom = 1.4;
float angle = 0;

color bgColor;
boolean toggleValue = false;

PVector loc = new PVector();
WaterMolecule water;

ArrayList<WaterMolecule> sea = new ArrayList<WaterMolecule>();
WaterMoleculeFactory waterFactory;

float temperature;

void setup()
{
  //  size(1024, 768);
//  size(1900, 1000);
  size(500, 500);
  xOrigin = width/2;
  yOrigin = height/2;

  cp5 = new ControlP5(this);

  cp5.addButton("takePicture")
    .setValue(1)
//      .setPosition(1705, 250)
      .setPosition(410, 50)
        .setSize(30, 430)
          ;

  cp5.addToggle("toggleBg")
//    .setPosition(1770, 250)
      .setPosition(450, 50)
      .setSize(50, 20)
        .setValue(true)
          .setMode(ControlP5.SWITCH)
            ;

  cp5.addSlider("Temperature")
    //    .setPosition(900, 60)
//    .setPosition(1770, 340)
      .setPosition(450, 100)
      .setSize(30, 380)
        .setRange(0, 200)
          .setNumberOfTickMarks(9)
            ;

  waterFactory = new WaterMoleculeFactory();

  //method 1: 
  for ( int i = - ( seaSize ); i < seaSize; i++ ) 
  { 
    for ( int j = - ( seaSize / 2  ); j < seaSize / 2; j++) 
    { 
      //      loc.set(   i * ( -1 * horizontalSpacing ) , j * verticalSpacing );
      loc.set(   i  * horizontalSpacing + generator.nextInt(61), j * verticalSpacing + generator.nextInt(43) );
      sea.add ( (WaterMolecule) waterFactory.getMolecule( loc ) ) ;
    }
  }
}

void draw()
{
  pushMatrix();
  translate(xOrigin, yOrigin);
  scale(zoom);
  rotate(angle);
  
  ControllerProperties props = cp5.getProperties();

  if (toggleBg ==true)
  {
    background(bgColor);
  } 
  thermometer();
  for ( int i = 0; i < sea.size (); i++ )
  {
    water = sea.get(i);
    water.draw();
  }
  // Must be last statment in draw loop for shifting xOrigin and yOrigin.
  popMatrix();
}

void takePicture(int value)
{
  if ( value == 1 )
  {
    print("Snapping screenshot");
    saveFrame("screensaves" + File.separator + "WaterMoleculesBTN-####.png");
  }
}

public void thermometer()
{   
  float alpha = 0.009;
  if ( (Temperature <= 200) && ( Temperature > 175))
  {
    // Hot
    bgColor = color(245, 190, 120);
    for ( WaterMolecule drop : sea )
    { 
      drop.Explode();
    }
  }

  if ( (Temperature <= 175) && ( Temperature > 150))
  {
    // hotter
    bgColor = color(145, 174, 225);
    for ( WaterMolecule drop : sea )
    {
      drop.Cumbust();
    }

    //    saveFrame("screensaves" + File.separator + "WaterMoleculesRedCircles-####.png");
  }

  if ( (Temperature <= 150 ) && ( Temperature > 125))
  {
    // Warmmer
    bgColor = color(135, 164, 215);
    for ( WaterMolecule drop : sea )
    {
      drop.Vaporize();
    }
  }

  if ( (Temperature <= 125 ) && ( Temperature > 100))
  {
    // warm  
    bgColor = color(140, 150, 185);
    for ( WaterMolecule drop : sea )
    {
      drop.Condense();
    }
  }  

  if ( (Temperature <= 100) && ( Temperature > 75 ) ) 
  {
    // warm
    
//    for
    
    bgColor = color(144, 144, 172);
    for ( WaterMolecule drop : sea )
    {
      drop.Condense();
    }
    //    saveFrame("screensaves" + File.separator + "WaterMoleculesBullsEye-####.png");
  }

  if ( (Temperature <= 75) && ( Temperature > 50 ) ) 
  {
    //    saveFrame("screensaves" + File.separator + "WaterMolecules-####.png");
    // colder

    alpha = alpha + 0.00993;
    bgColor = color(214, 224, 232, 0.001);
    for ( WaterMolecule drop : sea )
    {
      drop.Condense();
    }
  }       
  if ( (Temperature <= 50) && ( Temperature > 25 ) ) 
  {
    // Freezing
    bgColor = color(234, 234, 252);
    for ( WaterMolecule drop : sea )
    {
      drop.Freeze();
    }
  }

  if ( (Temperature <= 25) && ( Temperature > 0 ) ) 
  {
    // Freezing
    bgColor = color(244, 244, 252);
    for ( WaterMolecule drop : sea )
    {
      drop.Freeze();
    }
  }

  if ( (Temperature <= 0)  ) 
  {
    // Freezing
    bgColor = color(254, 254, 252);
    for ( WaterMolecule drop : sea )
    {
      drop.Freeze();
    }
  }
}

void keyPressed() 
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      zoom += 0.4;
    } else if (keyCode == DOWN)
    {
      zoom -= 0.4;
    } else if (keyCode == RIGHT)
    {
      angle += 0.4;
    } else if (keyCode == LEFT)
    {
      angle -= 0.4;
    }
  }

  if (key == ' ')
  {
    angle = 0;
    zoom = 1;
  }
}

