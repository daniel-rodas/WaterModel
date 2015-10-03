/**
 *
 * @author Rodas
 */
 
 
import controlP5.*;

ControlP5 cp5;

int temperatureSliderValue = 180;

float xOrigin;
float yOrigin;

WaterMolecule water;
WaterMoleculeFactory waterFactory;
float temperature;

void setup()
{
  size(1024, 768);
  
  xOrigin = width/2;
  yOrigin = height/2;

  cp5 = new ControlP5(this);


  cp5.addSlider("temperatureSliderValue")
     .setPosition(900,60)
     .setSize(60,600)
     .setRange(0,200)
     .setNumberOfTickMarks(9)
     ;
     
  waterFactory = new WaterMoleculeFactory();
  water = (WaterMolecule) waterFactory.getMolecule();
}

void draw()
{
  pushMatrix();
  translate(xOrigin, yOrigin);

  ControllerProperties props = cp5.getProperties();
  print(props);
  
  thermometer(); 
  
  water.draw();
  
  // Must be last statment in draw loop for shifting xOrigin and yOrigin.
  popMatrix();

}

void keyPressed() 
  {
    water.keyPressed();
  }

public void thermometer()
{    
  if ( (temperatureSliderValue <= 200) && ( temperatureSliderValue > 175))
  {
        // Hot
    background(245, 190, 120);
    // water.chageState();
    
    // water.chageState();

  }
  

  if ( (temperatureSliderValue <= 175) && ( temperatureSliderValue > 150))
    {
      // hotter
    background(145, 174, 225);
    
    // water.chageState();

    }
   
  
  if ( (temperatureSliderValue <= 150 ) && ( temperatureSliderValue > 125))
    {
      // Warmmer
    background(135, 164, 215);
    
    // water.chageState();
    
 
    }
   
  if ( (temperatureSliderValue <= 125 ) && ( temperatureSliderValue > 100))
    {
      // warm  
    background(140, 150, 185);
    
    // water.chageState();

    }  
    
  if ( (temperatureSliderValue <= 100) && ( temperatureSliderValue > 75 ) ) 
    {
      // cold
    background(144, 144, 172);
    
    // water.chageState();

    }
      
  if ( (temperatureSliderValue <= 75) && ( temperatureSliderValue > 50 ) ) 
    {
      // colder
    background(214, 224, 232);
    
    // water.chageState();

    }       
  if ( (temperatureSliderValue <= 50) && ( temperatureSliderValue > 25 ) ) 
    {
      // Freezing
    background(234, 234, 252);
    
    // water.chageState();

    }
    
      if ( (temperatureSliderValue <= 25) && ( temperatureSliderValue > 0 ) ) 
    {
      // Freezing
    background(244, 244, 252);
    
    // water.chageState();

    }
    
    if ( (temperatureSliderValue <= 0)  ) 
    {
      // Freezing
    background(254, 254, 252);
    
    // water.chageState();

    }
}
