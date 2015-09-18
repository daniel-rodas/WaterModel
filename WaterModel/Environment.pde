class Environment
{
  int pressure;
  int moisture; 
  int altitude;

  Wind wind;
  
  Temperature temperature;
  
  Environment()
  {
    temperature = new Temperature();
    wind = new Wind();
  }


}
