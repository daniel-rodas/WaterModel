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
     .setRange(-50,200)
     .setNumberOfTickMarks(9)
     ;
     
  waterFactory = new WaterMoleculeFactory();


  frameRate(4);
}

void draw()
{
  pushMatrix();
  
  translate(xOrigin, yOrigin);

  thermometer();
  print("temperatureSliderValue");
  print(temperatureSliderValue);
  water = (WaterMolecule) waterFactory.getMolecule();
  
  popMatrix();
}

public void thermometer()
{    
  if ( (temperatureSliderValue <= 200) && ( temperatureSliderValue > 168))
  {
        // Hot
    background(245, 190, 120);
  }
  

  if ( (temperatureSliderValue <= 168) && ( temperatureSliderValue > 137))
    {
      // hotter
    background(145, 174, 225);
    }
   
  
  if ( (temperatureSliderValue <= 137 ) && ( temperatureSliderValue > 106))
    {
      // Warmmer
    background(135, 164, 215);
    }
   
  if ( (temperatureSliderValue <= 106 ) && ( temperatureSliderValue > 75))
    {
      // warm  
    background(140, 150, 185);
    }  
    
  if ( (temperatureSliderValue <= 75) && ( temperatureSliderValue > 43 ) ) 
    {
      // cold
    background(144, 144, 172);
    }
      
  if ( (temperatureSliderValue <= 43) && ( temperatureSliderValue > 12 ) ) 
    {
      // colder
    background(214, 224, 232);
    }       
  if ( (temperatureSliderValue <= 18) && ( temperatureSliderValue > 0 ) ) 
    {
      // Freezing
    background(244, 244, 252);
    }

}
